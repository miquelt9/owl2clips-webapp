;;; ---------------------------------------------------------
;;; uploads/ontologia_sbc.clp
;;; Translated by owl2clips
;;; Translated to CLIPS from ontology uploads/ontologia_sbc.owl
;;; :Date 08/05/2023 17:37:05

(defclass Programa
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot contiene
        (type INSTANCE)
        (create-accessor read-write))
)

(defclass Etapa
    (is-a Programa)
    (role concrete)
    (pattern-match reactive)
)

(defclass Thing
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
)

(defclass Ejercicio
    (is-a Thing)
    (role concrete)
    (pattern-match reactive)
    (multislot ejercita
        (type INSTANCE)
        (create-accessor read-write))
    (slot aerobico
        (type SYMBOL)
        (create-accessor read-write))
    (slot calentamiento
        (type SYMBOL)
        (create-accessor read-write))
    (slot descripcion
        (type STRING)
        (create-accessor read-write))
    (slot duracion
        (type INTEGER)
        (create-accessor read-write))
    (slot intensidad
        (type INTEGER)
        (create-accessor read-write))
    (slot nombre
        (type STRING)
        (create-accessor read-write))
)

(defclass Equilibrio
    (is-a Ejercicio)
    (role concrete)
    (pattern-match reactive)
)

(defclass Flexibilidad
    (is-a Ejercicio)
    (role concrete)
    (pattern-match reactive)
)

(defclass Fuerza
    (is-a Ejercicio)
    (role concrete)
    (pattern-match reactive)
)

(defclass Resistencia
    (is-a Ejercicio)
    (role concrete)
    (pattern-match reactive)
)

(defclass Enfermedad
    (is-a Thing)
    (role concrete)
    (pattern-match reactive)
    (multislot impide_hacer
        (type INSTANCE)
        (create-accessor read-write))
    (slot nombre
        (type STRING)
        (create-accessor read-write))
)

(defclass Cardiorespiratoria
    (is-a Enfermedad)
    (role concrete)
    (pattern-match reactive)
)

(defclass Mobilidad
    (is-a Enfermedad)
    (role concrete)
    (pattern-match reactive)
)

(defclass Otros
    (is-a Enfermedad)
    (role concrete)
    (pattern-match reactive)
)

(defclass Psicologica
    (is-a Enfermedad)
    (role concrete)
    (pattern-match reactive)
)

(defclass Persona
    (is-a Thing)
    (role concrete)
    (pattern-match reactive)
    (multislot puede_realizar
        (type INSTANCE)
        (create-accessor read-write))
    (multislot sufre
        (type INSTANCE)
        (create-accessor read-write))
    (slot altura
        (type INTEGER)
        (create-accessor read-write))
    (slot borg
        (type INTEGER)
        (create-accessor read-write))
    (slot dias_disponibles
        (type INTEGER)
        (create-accessor read-write))
    (slot edad
        (type INTEGER)
        (create-accessor read-write))
    (slot nivel_fisico
        (type INTEGER)
        (create-accessor read-write))
    (slot nombre
        (type STRING)
        (create-accessor read-write))
    (slot peso
        (type FLOAT)
        (create-accessor read-write))
    (slot quiere_descripcion
        (type SYMBOL)
        (create-accessor read-write))
    (multislot topDataProperty
        (type INSTANCE)
        (create-accessor read-write))
)

(defclass Partes_cuerpo
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot impide_hacer
        (type INSTANCE)
        (create-accessor read-write))
)

(definstances instances
    ([Ansiedad] of Psicologica
    )

    ([Bailar] of Resistencia
         (ejercita  [Brazos] [Cadera] [Cuello_Hombros] [Lumbar_Espalda] [Mano_Muñeca] [Piernas] [Pies_Tobillos])
         (aerobico  "true")
         (calentamiento  "false")
         (descripcion  "Para esta práctica le recomendamos ir a su gimnasio o bién mirar un video.")
         (intensidad  4)
         (nombre  "bailar")
    )

    ([Bicicleta] of Resistencia
         (ejercita  [Cadera] [Lumbar_Espalda] [Piernas] [Pies_Tobillos])
         (aerobico  "true")
         (calentamiento  "false")
         (descripcion  "Para esta práctica le recomendamos ir a su gimnasio o bién mirar un video.")
         (intensidad  5)
         (nombre  "ir en bicicleta")
    )

    ([Brazos] of Partes_cuerpo
         (impide_hacer  [Bailar] [Correr] [Ejercicio_biceps] [Estiramiento_triceps] [Extension_triceps] [Levantar_brazos] [Levantarse_de_una_silla] [Marcha] [Natación] [Yoga])
    )

    ([Cadera] of Partes_cuerpo
         (impide_hacer  [Bailar] [Bicicleta] [Caminar] [Correr] [Estiramiento_tendones_muslo] [Extension_cadera] [Flexion_cadera] [Flexion_tronco] [Marcha] [Natación] [Subir_escaleras] [Yoga])
    )

    ([Caminar] of Resistencia
         (ejercita  [Cadera] [Lumbar_Espalda] [Piernas] [Pies_Tobillos])
         (aerobico  "true")
         (calentamiento  "false")
         (descripcion  "Camine pero tenga en cuanta que debe elevar ligeramente la barvilla i mantener los hombros hacia atras.")
         (intensidad  1)
         (nombre  "caminar")
    )

    ([Cardiopatía] of Cardiorespiratoria
    )

    ([Correr] of Resistencia
         (ejercita  [Brazos] [Cadera] [Lumbar_Espalda] [Piernas] [Pies_Tobillos])
         (aerobico  "true")
         (calentamiento  "false")
         (descripcion  "Ande rápidamente y con tanto impulso que, entre un paso y el siguiente, los pies o las patas quedan por un momento en el aire. Recuerde mantener la espalda recta.")
         (intensidad  5)
         (nombre  "correr")
    )

    ([Cuello_Hombros] of Partes_cuerpo
         (impide_hacer  [Bailar] [Flexion_hombros] [Natación] [Yoga])
    )

    ([Cáncer] of Otros
    )

    ([Depresión] of Psicologica
    )

    ([Diabetes] of Otros
    )

    ([Ejercicio_biceps] of Fuerza
         (ejercita  [Brazos])
         (aerobico  "false")
         (calentamiento  "false")
         (descripcion  "Sujete las mancuernas con ambas manos a los costados (o alternativamente por ejemplo un paquete de arroz), con los brazos completamente extendidos y las palmas de las manos hacia adentro. Flexiona los brazos trayendo las mancuernas hacia el pecho.
Repita el ejercicio durante un conjunto 5 de repeticiones, luego descansa y repita hasta acabar las repeticiones.")
         (intensidad  3)
         (nombre  "ejercicio de biceps")
    )

    ([Elevacion_piernas] of Fuerza
         (ejercita  [Piernas])
         (aerobico  "false")
         (calentamiento  "false")
         (descripcion  "Acuéstese en el suelo con la espalda apoyada en el suelo y las piernas extendidas, coloque sus manos debajo de tu trasero o en tu lado para sostenerte y evitar que te deslices hacia atrás.
Eleve ambas piernas hacia arriba, manteniendo tus rodillas ligeramente dobladas y tus pantorrillas paralelas al suelo.
Mantén la posición durante unos segundos, luego baje tus piernas lentamente hacia el suelo.
Repita el ejercicio durante un conjunto 5 de repeticiones, luego descansa y repita hasta acabar las repeticiones.")
         (intensidad  3)
         (nombre  "elevación de piernas")
    )

    ([Estiramiento_cuadriceps] of Flexibilidad
         (ejercita  [Piernas])
         (aerobico  "false")
         (calentamiento  "true")
         (descripcion  "Párase cerca de una pared o alguna máquina de entrenamiento robusta para sostenerse.
Tome su tobillo y suavemente traiga el talón hacia arriba y atrás hasta sentir un estiramiento en la parte delantera del muslo.
Ajuste los músculos del estómago para evitar que se comben hacia afuera, y deja las rodillas juntas.
Mantén esta posición durante aproximadamente 15 segundos i cambie de pierna.
Repita el ejercicio durante un conjunto 5 de repeticiones, luego descansa y repita hasta acabar las repeticiones.")
         (intensidad  1)
         (nombre  "estiramiento de cuádriceps")
    )

    ([Estiramiento_isquitibiales] of Flexibilidad
         (ejercita  [Piernas])
         (aerobico  "false")
         (calentamiento  "true")
         (descripcion  "Sentados en el suelo con las piernas juntas y las rodillas flexionadas, coger la punta de los dedos. Estirar las piernas todo lo que se pueda, sin soltar las puntas de los dedos de los pies. Mantener la extensión de las rodillas y la cadera hacia delante por unos segundos, y deshacer la postura lentamente. 
Repita el ejercicio durante un conjunto 5 de repeticiones, luego descansa y repita hasta acabar las repeticiones.")
         (intensidad  1)
         (nombre  "estiramiento de isquiotibiales")
    )

    ([Estiramiento_muñeca] of Flexibilidad
         (ejercita  [Mano_Muñeca])
         (aerobico  "false")
         (calentamiento  "true")
         (descripcion  "Doble la muñeca y apunte con la mano hacia el piso. Con la otra mano, doble suavemente la muñeca aún más hasta que sienta un estiramiento entre leve y moderado en el antebrazo. Mantenga esta posición unos 15 segundos, por lo menos. 
Repita el ejercicio durante un conjunto 5 de repeticiones, luego descansa y repita hasta acabar las repeticiones.")
         (intensidad  1)
         (nombre  "estiramiento de muñeca")
    )

    ([Estiramiento_pantorrillas] of Flexibilidad
         (ejercita  [Piernas])
         (aerobico  "false")
         (calentamiento  "true")
         (descripcion  "Mientras se sostiene a una silla, mantenga una pierna atrás con la rodilla derecha y el talón pegado al suelo. Lentamente dobla los codos y la rodilla de adelante y mueve la cadera hacia adelante hasta que sientas que la pantorrilla se estira. Mantén esta posición unos 20 segundos.
Repita el ejercicio durante un conjunto 5 de repeticiones, luego descansa y repita hasta acabar las repeticiones.")
         (intensidad  1)
         (nombre  "estiramiento de Pantorrillas")
    )

    ([Estiramiento_tendones_muslo] of Flexibilidad
         (ejercita  [Cadera] [Lumbar_Espalda])
         (aerobico  "false")
         (calentamiento  "true")
         (descripcion  "Extienda una pierna hacia el frente con el pie flexionado y doble la otra inclinándose ligeramente hacia atrás. La pelvis debe estar inclinada hacia delante. Mantenga la parte superior del cuerpo derecha mientras se hace el estiramiento unos 15 segundos y luego se cambia de lado.
Repita el ejercicio durante un conjunto 5 de repeticiones, luego descansa y repita hasta acabar las repeticiones.")
         (intensidad  2)
         (nombre  "estiramiento de los Tendones del muslo")
    )

    ([Estiramiento_tobillos] of Flexibilidad
         (ejercita  [Pies_Tobillos])
         (aerobico  "false")
         (calentamiento  "true")
         (descripcion  "Rote el tobillo en el sentido de las agujas del reloj y después, en sentido contrario hasta que te permita el grado de movilidad. Canvie de pie.
Repita el ejercicio durante un conjunto 5 de repeticiones, luego descansa y repita hasta acabar las repeticiones.")
         (intensidad  1)
         (nombre  "estiramiento de tobillos")
    )

    ([Estiramiento_triceps] of Flexibilidad
         (ejercita  [Brazos])
         (aerobico  "false")
         (calentamiento  "true")
         (descripcion  "Eleve el brazo sobre la cabeza y doble el codo completamente de tal manera que la mano quede por detrás del cuello, utilizando el otro brazo para estabilizar el codo. Mantenga esta posición unos 15 segundos y luego cambie de lado.
Repita el ejercicio durante un conjunto 5 de repeticiones, luego descansa y repita hasta acabar las repeticiones.")
         (intensidad  1)
         (nombre  "estiramiento de triceps")
    )

    ([Estrés] of Psicologica
    )

    ([Extension_cadera] of Fuerza
         (ejercita  [Cadera])
         (aerobico  "false")
         (calentamiento  "false")
         (descripcion  "Acuéstese boca abajo en el suelo con las piernas extendidas detrás de usted y los brazos a lo largo del cuerpo.
Con la espalda recta en todo momento, lleva la pierna que tiene el peso hacia atrás lentamente y sin flexionar la rodilla. Eleva y desciende la pierna de forma controlada varias veces de tal manera que sea la cadera la que dirija el movimiento.
Repita el ejercicio durante un conjunto 5 de repeticiones, luego descansa y repita hasta acabar las repeticiones.")
         (intensidad  2)
         (nombre  "extensión de cadera")
    )

    ([Extension_rodilla] of Fuerza
         (ejercita  [Piernas])
         (aerobico  "false")
         (calentamiento  "false")
         (descripcion  "Sientese en una silla con piernas a lo ancho de la cadera i espalda recta.
Estire la rodilla derecha lentament por unos segunes un total de 5 repeticiones.
Repita con la rodilla izquierda.
Repita el ejercicio durante un conjunto establecido de repeticiones, luego descansa y repita hasta acabar las repeticiones.")
         (intensidad  2)
         (nombre  "extensión de rodilla")
    )

    ([Extension_triceps] of Fuerza
         (ejercita  [Brazos])
         (aerobico  "false")
         (calentamiento  "false")
         (descripcion  "Acuéstese con una pesa en la mano. Apunta la parte superior del brazo hacia arriba, con el codo flexionado en un ángulo de 90 grados. Enderezca el codo lentamente, moviendo la pesa hacia arriba. Luego, baje lentamente la pesa a la posición inicial.
Repita el ejercicio durante un conjunto 5 de repeticiones, luego descansa y repita hasta acabar las repeticiones.")
         (intensidad  2)
         (nombre  "extensión de triceps")
    )

    ([Flexion_cadera] of Fuerza
         (ejercita  [Cadera])
         (aerobico  "false")
         (calentamiento  "false")
         (descripcion  "Siéntese en el suelo con las piernas extendidas delante de ti y los brazos a lo largo del cuerpo.
Eleve su pie derecho del suelo y coloque la punta del pie en el muslo izquierdo.
Flexione su cadera derecha y coloca tu mano derecha en el suelo a tu lado derecho. Eleva tu brazo izquierdo hacia el techo y mire hacia arriba.
Mantén la posición durante unos segundos, luego regresa a la posición inicial y repite con el otro lado.
Repita el ejercicio durante un conjunto 5 de repeticiones, luego descansa y repita hasta acabar las repeticiones.")
         (intensidad  1)
         (nombre  "flexión de cadera")
    )

    ([Flexion_hombros] of Fuerza
         (ejercita  [Cuello_Hombros])
         (aerobico  "false")
         (calentamiento  "false")
         (descripcion  "Párese de frente a una pared. Lentamente camine hacia arriba con los dedos de la mano por la pared hasta que sienta un estiramiento. Sostenga el estiramiento unos 15 segundos. Regrese a la posición original de pie.
Repita el ejercicio durante un conjunto 5 de repeticiones, luego descansa y repita hasta acabar las repeticiones.")
         (intensidad  2)
         (nombre  "flexión de hombros")
    )

    ([Flexion_plantar] of Fuerza
         (ejercita  [Piernas] [Pies_Tobillos])
         (aerobico  "false")
         (calentamiento  "false")
         (descripcion  "Siéntese en la cama o en el piso con la pierna derecha extendida. Doble ligeramente la rodilla izquierda.
Flexione el pie derecho, empujando el talón hacia adelante y trayendo los dedos del pie hacia usted. Sostenga esta posición durante 5 segundos.
Mueva el pie en la dirección contraria, apuntando los dedos del pie hacia adelante. Sostenga esta posición durante 5 segundos.
Repita el ejercicio durante un conjunto 5 de repeticiones, luego descansa y repita hasta acabar las repeticiones.")
         (intensidad  2)
         (nombre  "flexión plantar")
    )

    ([Flexion_rodilla] of Equilibrio
         (ejercita  [Piernas])
         (aerobico  "false")
         (calentamiento  "false")
         (descripcion  "Sientese en una silla con piernas a lo ancho de la cadera i espalda recta.
Estire la rodilla derecha lentament por unos segunes un total de 5 repeticiones.
Repita con la rodilla izquierda.
Repita el ejercicio durante un conjunto establecido de repeticiones, luego descansa y repita hasta acabar las repeticiones.")
         (intensidad  2)
         (nombre  "flexion de rodilla")
    )

    ([Flexion_tronco] of Flexibilidad
         (ejercita  [Cadera] [Lumbar_Espalda])
         (aerobico  "false")
         (calentamiento  "false")
         (descripcion  "Tumbado boca arriba y con las manos detrás de las orejas, flexione el tronco ligeramente dejando la parte baja de la espalda siempre en contacto con el suelo. Si sube demasiado sentirá como trabaja la parte anterior del muslo más cercana a la cadera. Nunca lleve la barbilla al pecho.
Repita el ejercicio durante un conjunto 5 de repeticiones, luego descansa y repita hasta acabar las repeticiones.")
         (intensidad  1)
         (nombre  "flexión de tronco")
    )

    ([Hipertensión] of Cardiorespiratoria
    )

    ([Insomnio] of Psicologica
    )

    ([Jubilado] of Persona
         (puede_realizar  [Bailar] [Bicicleta] [Caminar] [Correr] [Ejercicio_biceps] [Elevacion_piernas] [Estiramiento_cuadriceps] [Estiramiento_isquitibiales] [Estiramiento_muñeca] [Estiramiento_pantorrillas] [Estiramiento_tendones_muslo] [Estiramiento_tobillos] [Estiramiento_triceps] [Extension_cadera] [Extension_rodilla] [Extension_triceps] [Flexion_cadera] [Flexion_hombros] [Flexion_plantar] [Flexion_rodilla] [Flexion_tronco] [Levantar_brazos] [Levantarse_de_una_silla] [Marcha] [Natación] [Subir_escaleras] [Yoga])
    )

    ([Levantar_brazos] of Fuerza
         (ejercita  [Brazos])
         (aerobico  "false")
         (calentamiento  "false")
         (descripcion  "Sostenga una mancuerna en cada mano y coloca las palmas en dirección al cuerpo. Mantenga los codos apenas doblados, levanta los brazos hacia los costados hasta que las mancuernas estén a la altura del pecho y, luego, bájelos nuevamente hasta la posición de inicio.
Repita el ejercicio durante un conjunto 5 de repeticiones, luego descansa y repita hasta acabar las repeticiones.")
         (intensidad  2)
         (nombre  "levantamiento de brazos")
    )

    ([Levantarse_de_una_silla] of Fuerza
         (ejercita  [Brazos] [Piernas])
         (aerobico  "false")
         (calentamiento  "false")
         (descripcion  "Siéntese en el borde de una silla con los pies apoyados en el suelo y los brazos a lo largo del cuerpo.
Eleve su peso sobre tus talones y coloca tus manos en los brazos de la silla.
Levante su cuerpo y use sus manos para empujarte hacia arriba y levantarte de la silla. Una vez que estés de pie, asegúrese de mantener su espalda recta y sus hombros hacia atrás.
Cuando esté listo para sentarte de nuevo, sienta tu peso sobre tus talones y use sus manos para apoyarte mientras se sienta lentamente en la silla.
Repita el ejercicio durante un conjunto 5 de repeticiones, luego descansa y repita hasta acabar las repeticiones.")
         (intensidad  3)
         (nombre  "Levantarse de una silla")
    )

    ([Lumbar_Espalda] of Partes_cuerpo
         (impide_hacer  [Bailar] [Bicicleta] [Caminar] [Correr] [Estiramiento_tendones_muslo] [Flexion_tronco] [Marcha] [Natación] [Subir_escaleras] [Yoga])
    )

    ([Mano_Muñeca] of Partes_cuerpo
         (impide_hacer  [Bailar] [Estiramiento_muñeca] [Natación])
    )

    ([Marcha] of Resistencia
         (ejercita  [Brazos] [Cadera] [Lumbar_Espalda] [Piernas] [Pies_Tobillos])
         (aerobico  "true")
         (calentamiento  "false")
         (descripcion  "Ande energicamente, recuerda minimizar la rotación de cadera, mantener los hombros hacia atrás i tener la espalda recta.")
         (intensidad  3)
         (nombre  "marcha")
    )

    ([Natación] of Resistencia
         (ejercita  [Brazos] [Cadera] [Cuello_Hombros] [Lumbar_Espalda] [Mano_Muñeca] [Piernas] [Pies_Tobillos])
         (aerobico  "true")
         (calentamiento  "false")
         (descripcion  "Nade en un cuerpo de agua como bién puede ser el mar o una piscina.")
         (intensidad  4)
         (nombre  "nadar")
    )

    ([Obesidad] of Otros
    )

    ([Piernas] of Partes_cuerpo
         (impide_hacer  [Bailar] [Bicicleta] [Caminar] [Correr] [Elevacion_piernas] [Estiramiento_cuadriceps] [Estiramiento_isquitibiales] [Estiramiento_pantorrillas] [Extension_rodilla] [Flexion_plantar] [Flexion_rodilla] [Levantarse_de_una_silla] [Marcha] [Natación] [Subir_escaleras] [Yoga])
    )

    ([Pies_Tobillos] of Partes_cuerpo
         (impide_hacer  [Bailar] [Bicicleta] [Caminar] [Correr] [Estiramiento_tobillos] [Flexion_plantar] [Marcha] [Natación] [Subir_escaleras])
    )

    ([Subir_escaleras] of Resistencia
         (ejercita  [Cadera] [Lumbar_Espalda] [Piernas] [Pies_Tobillos])
         (aerobico  "true")
         (calentamiento  "false")
         (descripcion  "Escoja un tramo de escaleras de su casa o de un parque i subalas manteniendo en todo momento la espalda recta. Cuando haya terminado con el tramo, bajelas y repita.")
         (intensidad  4)
         (nombre  "subir escaleras")
    )

    ([Yoga] of Equilibrio
         (ejercita  [Brazos] [Cadera] [Cuello_Hombros] [Lumbar_Espalda] [Piernas])
         (aerobico  "true")
         (calentamiento  "false")
         (descripcion  "Para esta práctica le recomendamos ir a su gimnasio o bién mirar un video.
(Video 1 (De pie) - https://www.youtube.com/watch?v=20Xwv2zSIhc)
(Video 2 (En silla) - https://www.youtube.com/watch?v=vBXWOUXb_5g)")
         (intensidad  2)
         (nombre  "yoga")
    )

    ([etapa] of Etapa
    )

    ([programa] of Programa
    )

)
