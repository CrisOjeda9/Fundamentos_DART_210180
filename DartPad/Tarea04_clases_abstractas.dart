void main() {
  // Caso de prueba 1: Nuevo paciente que se registra hoy
  final cristianEduardo = Paciente(
    id: 254,
    nombre: "Cristian Eduardo",
    primerApellido: "Ojeda",
    segundoApellido: "Gayosso",
    genero: Genero.hombre, // Enum Género
    grupoSanguineo: GrupoSanguineo.OP, // Enum Grupo Sanguíneo
    curp: "OEGC030109HPLJYRA2",
    fechaNacimiento: DateTime(2003, 1, 9),
    estatusVida: EstatusVida.vivo, // Enum Estatus de vida
    estatusMedico: "estable",
    nss: "1234567890",
    tipoSeguro: TipoSeguro.IMSS, // Enum Tipo de seguro
    fechaUltimaCita: DateTime.now(),
  );

  print(cristianEduardo);

  // Caso de prueba 2: Paciente que alguna vez fue trabajador del hospital
  final marthaFlores = Paciente(
    id: 125,
    nombre: "Carlos",
    primerApellido: "Hernadez",
    genero: Genero.hombre,
    grupoSanguineo: GrupoSanguineo.OP,
    curp: "HJC031226HPLYRA2",
    fechaNacimiento: DateTime(2008, 1, 8),
    estatusVida: EstatusVida.vivo,
    estatusMedico: "ex-trabajador",
    nss: "0987654321",
    tipoSeguro: TipoSeguro.IMSS,
    fechaUltimaCita: DateTime.now(),
    fechaRegistro: DateTime.now().subtract(Duration(days: 60)),
  );

  print(marthaFlores);

  // Caso de prueba 3: Paciente que acaba de fallecer
  final mariaRamirez = Paciente(
    id: 321,
    nombre: "María",
    primerApellido: "Ramírez",
    segundoApellido: "Hernández",
    genero: Genero.mujer,
    grupoSanguineo: GrupoSanguineo.BN,
    curp: "MRH123456789",
    fechaNacimiento: DateTime(1945, 10, 10),
    estatusVida: EstatusVida.vivo,
    estatusMedico: "crítico",
    nss: "1122334455",
    tipoSeguro: TipoSeguro.SeguroPopular,
    fechaUltimaCita: DateTime.now(),
    fechaRegistro: DateTime.now().subtract(Duration(days: 90)),
  );

  // Actualizar estatus a inactivo debido a fallecimiento
  mariaRamirez.registroDefuncion(
    motivo: "Enfermedad terminal",
    hora: DateTime.now(),
  );

  print(mariaRamirez);


}

// Enum para el estatus de vida del paciente
enum EstatusVida { vivo, fallecido }

// Enum para el tipo de seguro
enum TipoSeguro { IMSS, ISSSTE, SeguroPopular }

// Enum para el grupo sanguíneo
enum GrupoSanguineo { OP, ON, AP, AN, BP, BN, ABP, ABN }

// Enum para el género
enum Genero { hombre, mujer, otro }

// Clase abstracta Persona
abstract class Persona {
  int id;
  String nombre;
  String primerApellido;
  String? segundoApellido;
  Genero genero; // Usar el Enum Género
  GrupoSanguineo grupoSanguineo; // Usar el Enum Grupo Sanguíneo
  String? curp;
  DateTime fechaNacimiento;
  bool estatus; // Cambiado a estatus para reflejar activo/inactivo
  DateTime fechaRegistro;
  DateTime? fechaActualizacion;

  Persona({
    required this.id,
    required this.nombre,
    required this.primerApellido,
    this.segundoApellido,
    required this.genero,
    required this.grupoSanguineo,
    this.curp,
    required this.fechaNacimiento,
    this.estatus = true, // Por defecto es activo
    DateTime? fechaRegistro,
    this.fechaActualizacion,
  }) : fechaRegistro = fechaRegistro ?? DateTime.now();

  @override
  String toString() {
    String formatFechaNacimiento = "${fechaNacimiento.day.toString().padLeft(2, '0')}/" +
        "${fechaNacimiento.month.toString().padLeft(2, '0')}/${fechaNacimiento.year}";

    String formatFechaRegistro = "${fechaRegistro.day.toString().padLeft(2, '0')}/" +
        "${fechaRegistro.month.toString().padLeft(2, '0')}/${fechaRegistro.year} " +
        "${fechaRegistro.hour.toString().padLeft(2, '0')}:" +
        "${fechaRegistro.minute.toString().padLeft(2, '0')}:" +
        "${fechaRegistro.second.toString().padLeft(2, '0')}";

    curp ??= "No registrado";
    if (curp == "") curp = "No registrado";

    String status = estatus ? "Activo" : "Inactivo";

    return """
      --------------------------------------------------------------
      DATOS DE LA PERSONA
      --------------------------------------------------------------
      ID: $id,
      Nombre: $nombre $primerApellido ${segundoApellido ?? ""}
      Género: ${genero.name}
      Grupo Sanguíneo: ${grupoSanguineo.name}
      Fecha de nacimiento: $formatFechaNacimiento
      CURP: $curp
      Estatus: $status
      Fecha de registro:  $formatFechaRegistro
      --------------------------------------------------------------
      """;
  }
}

// Clase Paciente que extiende de Persona
class Paciente extends Persona {
  String nss;
  TipoSeguro tipoSeguro; // Enum
  EstatusVida estatusVida; // Enum
  String estatusMedico;
  DateTime fechaUltimaCita;

  // Nuevos atributos
  DateTime? horaDefuncion;
  String? motivoDefuncion;

  Paciente({
    required int id,
    required String nombre,
    required String primerApellido,
    String? segundoApellido,
    required Genero genero, // Usar el Enum Género
    required GrupoSanguineo grupoSanguineo, // Usar el Enum Grupo Sanguíneo
    String? curp,
    required DateTime fechaNacimiento,
    bool estatus = true,
    DateTime? fechaRegistro,
    DateTime? fechaActualizacion,
    required this.nss,
    required this.tipoSeguro,
    required this.estatusVida,
    required this.estatusMedico,
    required this.fechaUltimaCita,
  }) : super(
          id: id,
          nombre: nombre,
          primerApellido: primerApellido,
          segundoApellido: segundoApellido,
          genero: genero,
          grupoSanguineo: grupoSanguineo,
          curp: curp,
          fechaNacimiento: fechaNacimiento,
          estatus: estatus,
          fechaRegistro: fechaRegistro,
          fechaActualizacion: fechaActualizacion,
        );

  // Método para registrar la defunción
  void registroDefuncion({required String motivo, required DateTime hora}) {
    estatusVida = EstatusVida.fallecido;
    estatus = false; // Cambiar el estatus a inactivo
    horaDefuncion = hora;
    motivoDefuncion = motivo;
    fechaActualizacion = DateTime.now();
  }

  @override
  String toString() {
    String result = super.toString() +
        """
      NSS: $nss
      Tipo de Seguro: $tipoSeguro
      Estatus de Vida: $estatusVida
      Estatus Médico: $estatusMedico
      Fecha de última cita: ${fechaUltimaCita.day}/${fechaUltimaCita.month}/${fechaUltimaCita.year}
      """;

    // Solo mostrar motivo y hora de defunción si el paciente está fallecido
    if (estatusVida == EstatusVida.fallecido) {
      result += """Motivo de defunción: ${motivoDefuncion ?? "No especificado"}
      Hora de defunción: ${horaDefuncion != null ? "${horaDefuncion!.hour}:${horaDefuncion!.minute}" : "No especificada"}
      """;
    }

    result += "--------------------------------------------------------------\n";
    return result;
  }
}