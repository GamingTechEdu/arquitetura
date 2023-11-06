class SimcardEntity {
  final String id;
  final String cliente;
  final String simcon;
  final String slotsimcon;
  final DateTime datainstalacao;
  final String numerochip;
  final DateTime dataaticacao;
  final String fornecedor;
  final String operadora;
  final String plano;
  final String apn;
  final String numerolinha;
  final String numeroip;
  final String obs;

  SimcardEntity({
    required this.id,
    required this.cliente,
    required this.simcon,
    required this.slotsimcon,
    required this.datainstalacao,
    required this.numerochip,
    required this.dataaticacao,
    required this.fornecedor,
    required this.operadora,
    required this.plano,
    required this.apn,
    required this.numerolinha,
    required this.numeroip,
    required this.obs,
  });
}
