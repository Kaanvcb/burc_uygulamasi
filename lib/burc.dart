class Burc {
  final String _burcAdi;
  final String _burcDetayi;
  final String _burcKucukResim;
  final String _burcBuyukResim;
  final String _burcTarihi;

get burcAdi => this._burcAdi;
  get burcDetayi => this._burcDetayi;
  get burcBuyukResim => this._burcBuyukResim;
  get burcKucukResim => this._burcKucukResim;
  get burcTarihi => this._burcTarihi;
  Burc(this._burcAdi, this._burcDetayi, this._burcKucukResim, this._burcBuyukResim, this._burcTarihi);



  @override
  String toString() {
    // TODO: implement toString

      return '$_burcAdi-$_burcTarihi';

  }
}