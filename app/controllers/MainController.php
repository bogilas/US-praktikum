<?php
    class MainController extends Controller {
        public function login() {
            if (!empty($_POST)) {
                $username = filter_input(INPUT_POST, 'username', FILTER_SANITIZE_STRING);
                $password = filter_input(INPUT_POST, 'password', FILTER_SANITIZE_STRING);

                $hash = hash('sha512', $password . Configuration::USER_SALT);
                unset($password);

                $user = UserModel::getByUsernameAndPasswordHash($username, $hash);
                unset($hash);

                if ($user) {
                    Session::set('user_id', $user->user_id);
                    Session::set('username', $username);
                    Session::set('ip', filter_input(INPUT_SERVER, 'REMOTE_ADDR'));
                    Session::set('ua', filter_input(INPUT_SERVER, 'HTTP_USER_AGENT', FILTER_SANITIZE_STRING));

                    Misc::redirect('');
                } else {
                    $this->set('message', 'Nisu dobri login parametri.');
                    sleep(1);
                }
            }
        }

        public function logout() {
            Session::end();
            Misc::redirect('login');
        }
        
        public function preduzeca() {
            $preduzeca = BaseModel::getAllMRPCompanies();
            $this->setData('preduzeca', $preduzeca);
        }
        
        public function preduzece($preduzece_id) {
            $preduzece = BaseModel::getCPCompanie($id);
            $this->setData('preduzece', $preduzece);
        }
    }
