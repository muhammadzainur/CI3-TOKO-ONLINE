<?php

class Auth extends CI_Controller
{
  public function login()
  {
    $this->form_validation->set_rules('username', 'username', 'required', [
      'required'  => 'Username Wajib disi!'
    ]);
    $this->form_validation->set_rules('password', 'password', 'required', [
      'required'  => 'Password Wajib disi!'
    ]);
    if ($this->form_validation->run() == false) {
      $this->load->view('templates/header');
      $this->load->view('form_login');
      $this->load->view('templates/footer');
    } else {
      $auth = $this->model_auth->cek_login();
      if ($auth == false) {
        $this->session->set_flashdata('pesan', '<div class="alert alert-danger alert-dismissible fade show" role="alert">
        username Atau Password Anda Salah!
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>');
        redirect('auth/login');
      } else {
        //buat session
        $this->session->set_userdata('username', $auth->username);
        $this->session->set_userdata('role_id', $auth->role_id);

        switch ($auth->role_id) {
          case 1:
            redirect('admin/dashboard_admin');
            break;
          case 2:
            redirect('welcome');
            break;
          default:
            break;
        }
      }
    }
  }
  public function logout()
  {
    $this->session->sess_destroy();
    redirect('auth/login');
  }
}
