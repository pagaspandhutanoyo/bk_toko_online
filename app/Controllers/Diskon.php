<?php

namespace App\Controllers;

use App\Models\DiskonModel;
use CodeIgniter\I18n\Time;

class Diskon extends BaseController
{
  public function __construct()
  {
    helper('form');
    $this->diskon = new DiskonModel();
  }

  public function index()
  {
    $today_date = Time::today()->toDateString();
    $diskon = $this->diskon->select('*')->where('aktif', 1)->where('tanggal_akhir_berlaku >', $today_date)->findAll();

    return view('diskon/index', [
      'diskons' => $diskon,
    ]);
  }

  public function getdiskon()
  {
    if ($this->request->isAJAX()) {
      $today_date = Time::today()->toDateString();
      $kode_voucher = $this->request->getGet('kode_voucher');
      $data = $this->diskon->select('*')->where('aktif', 1)->where('tanggal_akhir_berlaku >', $today_date)->where('kode_voucher', $kode_voucher)->first();
      return $this->response->setJSON($data);
    }
  }
}
