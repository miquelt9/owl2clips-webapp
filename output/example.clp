;;; ---------------------------------------------------------
;;; uploads/ontologia_sbc.clp
;;; Translated by owl2clips
;;; Translated to CLIPS from ontology uploads/ontologia_sbc.owl
;;; :Date 08/05/2023 14:28:29

(defclass Ejercicio
    (is-a USER)
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
    (is-a USER)
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
    (is-a USER)
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

