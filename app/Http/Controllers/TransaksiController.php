<?php

namespace App\Http\Controllers;

use Dompdf\Dompdf;
use Dompdf\Options;
use App\Models\Transaksi;

class TransaksiController extends Controller
{
    public function generatePDF()
    {
        $transaksis = Transaksi::all();

        $options = new Options();
        $options->set('isHtml5ParserEnabled', true);
        $options->set('isPhpEnabled', true);

        $dompdf = new Dompdf($options);
        $dompdf->loadHtml(view('pdf.transaksi', compact('transaksis'))->render());
        $dompdf->setPaper('A4', 'portrait');
        $dompdf->render();

        return $dompdf->stream('daftar_transaksi.pdf');
    }
}
