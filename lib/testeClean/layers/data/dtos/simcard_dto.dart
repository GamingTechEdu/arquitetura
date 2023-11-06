import '../../domain/entities/simcard_entity.dart';

class SimcardDto extends SimcardEntity {
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

  SimcardDto({
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
  }) : super(
          id: id,
          cliente: cliente,
          simcon: simcon,
          slotsimcon: slotsimcon,
          datainstalacao: datainstalacao,
          numerochip: numerochip,
          dataaticacao: dataaticacao,
          fornecedor: fornecedor,
          operadora: operadora,
          plano: plano,
          apn: apn,
          numerolinha: numerolinha,
          numeroip: numeroip,
          obs: obs,
        );

  Map toMap(){
    return {
      'id': id,
      'cliente': cliente,
      'simcon': simcon,
      'slotsimcon': slotsimcon,
      'datainstalacao': datainstalacao,
      'numerochip': numerochip,
      'dataaticacao': dataaticacao,
      'fornecedor': fornecedor,
      'operadora': operadora,
      'plano': plano,
      'apn': apn,
      'numerolinha': numerolinha,
      'numeroip': numeroip,
      'obs': obs,
    };
  }

  static fromMap(Map map){
    return SimcardDto(
      id: map['id'],
      cliente: map['cliente'],
      simcon: map['simcon'],
      slotsimcon: map['slotsimcon'],
      datainstalacao: map['datainstalacao'],
      numerochip: map['numerochip'],
      dataaticacao: map['dataaticacao'],
      fornecedor: map['fornecedor'],
      operadora: map['operadora'],
      plano: map['plano'],
      apn: map['apn'],
      numerolinha: map['numerolinha'],
      numeroip: map['numeroip'],
      obs: map['obs'],
    );
  }
}
