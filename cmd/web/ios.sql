--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: x_admission_daily; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.x_admission_daily (
    id integer NOT NULL,
    encounter_id integer,
    note_date date,
    note_by character varying(65),
    note character varying(65),
    enter_by integer,
    enter_on date
);


ALTER TABLE public.x_admission_daily OWNER TO postgres;

--
-- Name: admission_daily_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admission_daily_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admission_daily_id_seq OWNER TO postgres;

--
-- Name: admission_daily_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admission_daily_id_seq OWNED BY public.x_admission_daily.id;


--
-- Name: x_admission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.x_admission (
    id integer NOT NULL,
    encounter_id integer,
    admitted integer,
    admission_date date,
    discharge_date date,
    remark character varying(65),
    enter_by integer,
    enter_on date
);


ALTER TABLE public.x_admission OWNER TO postgres;

--
-- Name: admission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admission_id_seq OWNER TO postgres;

--
-- Name: admission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admission_id_seq OWNED BY public.x_admission.id;


--
-- Name: clients; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clients (
    id integer NOT NULL,
    uuid character varying(65),
    firstname character varying(35),
    lastname character varying(35),
    othername character varying(35),
    gender integer,
    date_of_birth text,
    age double precision,
    marital integer,
    nin character varying(15),
    nationality integer,
    adm_date text,
    adm_from character varying(65),
    lab_no character varying(15),
    cif_no character varying(15),
    etu_no character varying(15),
    case_no character varying(15),
    occupation integer,
    occupation_aza character varying(45),
    date_symptom_onset text,
    date_isolation text,
    pregnant integer,
    adm_ward character varying(45),
    tb integer,
    asplenia integer,
    hep integer,
    diabetes integer,
    hiv integer,
    liver integer,
    malignancy integer,
    heart integer,
    pulmonary integer,
    kidney integer,
    neurologic integer,
    other character varying(45),
    status character varying(35),
    enter_on date,
    enter_by integer,
    edit_on date,
    edit_by integer,
    transfer integer,
    site integer
);


ALTER TABLE public.clients OWNER TO postgres;

--
-- Name: clients_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.clients_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.clients_id_seq OWNER TO postgres;

--
-- Name: clients_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.clients_id_seq OWNED BY public.clients.id;


--
-- Name: clinical; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clinical (
    clinical_id integer NOT NULL,
    encounter_id integer,
    fever integer,
    fatigue integer,
    weakness integer,
    malaise integer,
    myalgia integer,
    anorexia integer,
    sore_throat integer,
    headache integer,
    nausea integer,
    chest_pain integer,
    joint_pain integer,
    hiccups integer,
    cough integer,
    difficulty_breathing integer,
    difficulty_swallowing integer,
    abdominal_pain integer,
    diarrhoea integer,
    vomiting integer,
    irritability integer,
    dysphagia integer,
    unusual_bleeding integer,
    dehydration integer,
    shock integer,
    anuria integer,
    disorientation integer,
    agitation integer,
    seizure integer,
    meningitis integer,
    confusion integer,
    coma integer,
    bacteraemia integer,
    hyperglycemia integer,
    hypoglycemia integer,
    other_complications integer,
    aza_complications_specif character varying(45),
    pharyngeal_erythema integer,
    pharyngeal_exudate integer,
    conjunctival_injection integer,
    oedema_face integer,
    tender_abdomen integer,
    sunken_eyes integer,
    tenting_skin integer,
    palpable_liver integer,
    palpable_spleen integer,
    jaundice integer,
    enlarged_lymph_nodes integer,
    lower_extremity_oedema integer,
    bleeding integer,
    bleeding_nose integer,
    bleeding_mouth integer,
    bleeding_vagina integer,
    bleeding_rectum integer,
    bleeding_sputum integer,
    bleeding_urine integer,
    bleeding_iv_site integer,
    bleeding_other integer,
    bleeding_other_specif character varying(45),
    final_diagnosis integer,
    final_diagnosis_aza character varying(65),
    outcome_discharge integer,
    outcome_discharge_if_hear integer,
    outcome_discharge_if_arth integer,
    outcome_discharge_if_abor integer,
    outcome_discharge_if_neur integer,
    outcome_discharge_if_ocul integer,
    outcome_discharge_if_extr integer,
    outcome_discharge_if_othe integer,
    outcome_discharge_if_aza character varying(65),
    outcome_referred_facility character varying(65)
);


ALTER TABLE public.clinical OWNER TO postgres;

--
-- Name: clinical_clinical_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.clinical_clinical_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.clinical_clinical_id_seq OWNER TO postgres;

--
-- Name: clinical_clinical_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.clinical_clinical_id_seq OWNED BY public.clinical.clinical_id;


--
-- Name: x_comorbidities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.x_comorbidities (
    id integer NOT NULL,
    encounter_id integer,
    note character varying(36),
    chronic_cardiac integer,
    hypertension integer,
    chronic_pulmonary integer,
    asthma integer,
    chronic_kidney integer,
    chronic_liver integer,
    chronic_neurological integer,
    alcohol integer,
    sexually_transmitted integer,
    diabetes integer,
    smoking integer,
    tuberculosis_active integer,
    tuberculosis_previous integer,
    asplenia integer,
    malignant_neoplasm integer,
    neoplasm_present integer,
    immunosuppressants integer,
    immunosuppressants_specify character varying(36),
    immunosuppressive_condition integer,
    immunosuppressive_condition_specify character varying(36),
    n_gonorrhoeae integer,
    syphilis integer,
    hsv integer,
    chlamydia integer,
    sexually_others character varying(36),
    hiv integer,
    art_regiment character varying(36),
    cd4 double precision,
    viral_load double precision,
    enter_by integer,
    enter_on date
);


ALTER TABLE public.x_comorbidities OWNER TO postgres;

--
-- Name: comorbidities_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.comorbidities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comorbidities_id_seq OWNER TO postgres;

--
-- Name: comorbidities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.comorbidities_id_seq OWNED BY public.x_comorbidities.id;


--
-- Name: discharge; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.discharge (
    discharge_id integer NOT NULL,
    client_id integer,
    discharge_date character varying(35),
    final_diagnosis character varying(25),
    final_diagnosis_other character varying(45),
    discharge_outcome character varying(65),
    discharge_seq_heari integer,
    discharge_seq_pregn integer,
    discharge_seq_ocula integer,
    discharge_seq_extre integer,
    discharge_seq_arthr integer,
    discharge_seq_neuro integer,
    discharge_seq_others integer,
    counselling_provided character varying(65),
    discharging_officer character varying(35),
    discharge_facility character varying(45),
    discharge_seq_others_aza character varying(45),
    entered_on character varying(45),
    entered_by integer,
    updated_by integer,
    updated_on character varying(45)
);


ALTER TABLE public.discharge OWNER TO postgres;

--
-- Name: discharge_discharge_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.discharge_discharge_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.discharge_discharge_id_seq OWNER TO postgres;

--
-- Name: discharge_discharge_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.discharge_discharge_id_seq OWNED BY public.discharge.discharge_id;


--
-- Name: employee; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employee (
    employee_id integer NOT NULL,
    employee_fname character varying(46),
    employee_lname character varying(46),
    employee_sex character varying(7),
    employee_email character varying(65),
    employee_phone character varying(25),
    employee_cadre character varying(25),
    facility integer
);


ALTER TABLE public.employee OWNER TO postgres;

--
-- Name: employee_employee_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.employee_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.employee_employee_id_seq OWNER TO postgres;

--
-- Name: employee_employee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.employee_employee_id_seq OWNED BY public.employee.employee_id;


--
-- Name: encounter; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.encounter (
    encounter_id integer NOT NULL,
    encounter_type integer,
    encounter_time character varying(10),
    client_id integer,
    encounter_date character varying(30),
    managed_by integer,
    enter_on date,
    enter_by integer
);


ALTER TABLE public.encounter OWNER TO postgres;

--
-- Name: encounter_encounter_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.encounter_encounter_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.encounter_encounter_id_seq OWNER TO postgres;

--
-- Name: encounter_encounter_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.encounter_encounter_id_seq OWNED BY public.encounter.encounter_id;


--
-- Name: x_encounter; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.x_encounter (
    id integer NOT NULL,
    enrollment_id integer,
    encounter_type integer,
    date date,
    temp double precision,
    heart_rate double precision,
    resp_rate double precision,
    bp_sys double precision,
    bp_dia double precision,
    dehydration integer,
    alertness integer,
    height double precision,
    weight double precision,
    enter_by integer,
    enter_on date
);


ALTER TABLE public.x_encounter OWNER TO postgres;

--
-- Name: encounter_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.encounter_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.encounter_id_seq OWNER TO postgres;

--
-- Name: encounter_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.encounter_id_seq OWNED BY public.x_encounter.id;


--
-- Name: x_enrollment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.x_enrollment (
    id integer NOT NULL,
    case_no character varying(10),
    lab_no character varying(10),
    patient_no character varying(25),
    national_id character varying(25),
    other_id_name character varying(25),
    other_id_value character varying(25),
    firstname character varying(25),
    lastname character varying(35),
    sex integer,
    age_year integer,
    age_monthss integer,
    age_days integer,
    dob date,
    date_of_enrolment date,
    facility_id integer,
    enrolled_by integer,
    ishealthworker integer,
    islabworker integer,
    ppe_at_infection integer,
    tribe character varying(25),
    pregnant integer,
    gestational_week integer,
    lmnp date,
    recently_pregnant integer,
    pregnant_22 integer,
    tetanus_vac integer,
    known_link integer,
    sexually_active integer,
    sexualpartner_sex integer,
    travel integer,
    countries character varying(45),
    animal_contact integer,
    animal_describe character varying(65),
    symptom_onset date,
    enter_by integer,
    enter_on date
);


ALTER TABLE public.x_enrollment OWNER TO postgres;

--
-- Name: enrollment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.enrollment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.enrollment_id_seq OWNER TO postgres;

--
-- Name: enrollment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.enrollment_id_seq OWNED BY public.x_enrollment.id;


--
-- Name: facility; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.facility (
    facility_id integer NOT NULL,
    facility_name character varying(65),
    facility_level integer
);


ALTER TABLE public.facility OWNER TO postgres;

--
-- Name: facility_facility_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.facility_facility_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.facility_facility_id_seq OWNER TO postgres;

--
-- Name: facility_facility_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.facility_facility_id_seq OWNED BY public.facility.facility_id;


--
-- Name: lab; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lab (
    lab_id integer NOT NULL,
    encounter_id integer,
    specimen integer,
    sample_blood integer,
    sample_urine integer,
    sample_swab integer,
    sample_aza character varying(45),
    ebola_rdt integer,
    ebola_rdt_date character varying(15),
    ebola_rdt_results integer,
    ebola_pcr integer,
    ebola_pcr_aza character varying(45),
    ebola_pcr_date character varying(15),
    ebola_pcr_gp integer,
    ebola_pcr_gp_ct double precision,
    ebola_pcr_np integer,
    ebola_pcr_np_ct double precision,
    ebola_pcr_indeterminate integer,
    malaria_rdt_date character varying(15),
    malaria_rdt_result integer,
    blood_culture_date character varying(15),
    blood_culture_result integer,
    test_pos_infection integer,
    test_pos_infection_aza character varying(45),
    haemoglobinuria integer,
    proteinuria integer,
    hematuria integer,
    blood_gas integer,
    ph double precision,
    pco2 double precision,
    pao2 double precision,
    hco3 double precision,
    oxygen_therapy double precision,
    alt_sgpt double precision,
    ast_sgo double precision,
    creatinine double precision,
    potassium double precision,
    urea double precision,
    creatinine_kinase double precision,
    calcium double precision,
    sodium double precision,
    alt_sgpt_nd integer,
    ast_sgo_nd integer,
    creatinine_nd integer,
    potassium_nd integer,
    urea_nd integer,
    creatinine_kinase_nd integer,
    calcium_nd integer,
    sodium_nd integer,
    glucose double precision,
    lactate double precision,
    haemoglobin double precision,
    total_bilirubin double precision,
    wbc_count double precision,
    platelets double precision,
    pt double precision,
    aptt double precision,
    glucose_nd integer,
    lactate_nd integer,
    haemoglobin_nd integer,
    total_bilirubin_nd integer,
    wbc_count_nd integer,
    platelets_nd integer,
    pt_nd integer,
    aptt_nd integer
);


ALTER TABLE public.lab OWNER TO postgres;

--
-- Name: x_lab; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.x_lab (
    id integer NOT NULL,
    encounter_id integer,
    lab_date date,
    test integer,
    results double precision,
    done integer,
    alt double precision,
    ast double precision,
    creatinine double precision,
    potassium double precision,
    urea double precision,
    creatinine_kinase double precision,
    calcium double precision,
    sodium double precision,
    crp double precision,
    glucose double precision,
    lactate double precision,
    haemoglobin double precision,
    total double precision,
    wbc double precision,
    platelets double precision,
    prothrombin double precision,
    activated double precision,
    other double precision,
    other_specify_name double precision,
    other_specify_value double precision,
    alt_1 integer,
    ast_1 integer,
    creatinine_1 integer,
    potassium_1 integer,
    urea_1 integer,
    creatinine_kinase_1 integer,
    calcium_1 integer,
    sodium_1 integer,
    crp_1 integer,
    glucose_1 integer,
    lactate_1 integer,
    haemoglobin_1 integer,
    total_1 integer,
    wbc_1 integer,
    platelets_1 integer,
    prothrombin_1 integer,
    activated_1 integer,
    other_1 integer,
    enter_by integer,
    enter_on date
);


ALTER TABLE public.x_lab OWNER TO postgres;

--
-- Name: lab_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.lab_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lab_id_seq OWNER TO postgres;

--
-- Name: lab_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.lab_id_seq OWNED BY public.x_lab.id;


--
-- Name: lab_lab_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.lab_lab_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lab_lab_id_seq OWNER TO postgres;

--
-- Name: lab_lab_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.lab_lab_id_seq OWNED BY public.lab.lab_id;


--
-- Name: meta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.meta (
    meta_id integer NOT NULL,
    meta_category integer,
    meta_name character varying(100),
    meta_order integer,
    meta_description character varying(250),
    meta_link character varying(100)
);


ALTER TABLE public.meta OWNER TO postgres;

--
-- Name: meta_category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.meta_category (
    meta_category_id integer NOT NULL,
    meta_category_name character varying(46),
    meta_category_type character varying(25)
);


ALTER TABLE public.meta_category OWNER TO postgres;

--
-- Name: meta_category_meta_category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.meta_category_meta_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meta_category_meta_category_id_seq OWNER TO postgres;

--
-- Name: meta_category_meta_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.meta_category_meta_category_id_seq OWNED BY public.meta_category.meta_category_id;


--
-- Name: meta_meta_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.meta_meta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meta_meta_id_seq OWNER TO postgres;

--
-- Name: meta_meta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.meta_meta_id_seq OWNED BY public.meta.meta_id;


--
-- Name: x_outcome; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.x_outcome (
    id integer NOT NULL,
    enrollment_id integer,
    movement_date date,
    movement_type integer,
    note character varying(65),
    enter_by integer,
    enter_on date
);


ALTER TABLE public.x_outcome OWNER TO postgres;

--
-- Name: outcome_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.outcome_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.outcome_id_seq OWNER TO postgres;

--
-- Name: outcome_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.outcome_id_seq OWNED BY public.x_outcome.id;


--
-- Name: x_rush; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.x_rush (
    id integer NOT NULL,
    encounter_id integer,
    lesions_body integer,
    lesions_right_leg integer,
    lesions_right_arm integer,
    lesions_left_leg integer,
    lesions_left_arm integer,
    lesions_genitals integer,
    lesions_oral integer,
    lesions_perianal_1 integer,
    face integer,
    nares integer,
    mouth integer,
    chest integer,
    abdomen integer,
    back integer,
    perianal integer,
    genitals integer,
    palms integer,
    arms integer,
    forearms integer,
    thighs integer,
    legs integer,
    soles integer,
    other integer,
    other_specify character varying(36),
    macule integer,
    papule integer,
    early_vesicle integer,
    small_pustule integer,
    umbilicated_pustule integer,
    ulcerated_lesion integer,
    crusting_mature integer,
    partially_removed integer,
    pain_at_site integer,
    pain_score integer,
    lesions_perianal_2 integer,
    shade_location_lesions integer,
    enter_by integer,
    enter_on date
);


ALTER TABLE public.x_rush OWNER TO postgres;

--
-- Name: rush_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rush_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rush_id_seq OWNER TO postgres;

--
-- Name: rush_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rush_id_seq OWNED BY public.x_rush.id;


--
-- Name: status; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.status (
    status_id integer NOT NULL,
    client_id integer,
    status_date character varying(20),
    status character varying(15),
    status_notes character varying(65),
    updated_by integer,
    updated_on character varying(25)
);


ALTER TABLE public.status OWNER TO postgres;

--
-- Name: status_status_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.status_status_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.status_status_id_seq OWNER TO postgres;

--
-- Name: status_status_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.status_status_id_seq OWNED BY public.status.status_id;


--
-- Name: x_symptoms; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.x_symptoms (
    id integer NOT NULL,
    encounter_id integer,
    on_set date,
    note character varying(65),
    sore_throat integer,
    muscle_aches integer,
    headache integer,
    ocular_symptoms integer,
    fatigue_malaise integer,
    oral_pain integer,
    nausea integer,
    vomiting integer,
    diarrhoea integer,
    rectal_pain integer,
    lymphadenopathy integer,
    proctitis integer,
    pain_swallowing integer,
    difficulty_swallowing integer,
    pain_urination integer,
    urethritis integer,
    chest_pain integer,
    decreased_urine integer,
    dizzinessinteger integer,
    joint_pain integer,
    psychologic integer,
    symptom_other integer,
    axillary integer,
    cervical integer,
    inguinal integer,
    lymphadenopathy_other integer,
    other_symptom character varying(36),
    other_lymphadenopathy character varying(36),
    enter_by integer,
    enter_on date,
    fever integer,
    fatigue integer
);


ALTER TABLE public.x_symptoms OWNER TO postgres;

--
-- Name: symptoms_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.symptoms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.symptoms_id_seq OWNER TO postgres;

--
-- Name: symptoms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.symptoms_id_seq OWNED BY public.x_symptoms.id;


--
-- Name: treatment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.treatment (
    treatment_id integer NOT NULL,
    encounter_id integer,
    antibacterial integer,
    amoxicillin integer,
    ceftriaxone integer,
    cefixime integer,
    antibacterial_other character varying(45),
    antibacterial_dose character varying(45),
    antibacterial_route character varying(45),
    antibacterial_freq character varying(45),
    antimalarial integer,
    antimalarial_artesunate integer,
    antimalarial_arthemeter integer,
    antimalarial_al integer,
    antimalarial_aa integer,
    antimalarial_dose character varying(45),
    antimalarial_route character varying(45),
    antimalarial_freq character varying(45),
    other_meds_specify character varying(45),
    other_meds_dose character varying(45),
    other_meds_route character varying(45),
    other_meds_freq character varying(45),
    ebola_experimental integer,
    ebola_experimental_if character varying(45),
    oral integer,
    oral_ors integer,
    oral_ors_qty double precision,
    oral_water integer,
    oral_water_qty double precision,
    oral_other integer,
    oral_other_qty double precision,
    iv integer,
    iv_qty character varying(45),
    iv_using character varying(45),
    iv_aza character varying(45),
    access_type integer,
    blood_trans integer,
    oxygen_therapy integer,
    oxygen_qty double precision,
    oxygen_with character varying(45),
    vasopressors integer,
    renal integer,
    invasive integer
);


ALTER TABLE public.treatment OWNER TO postgres;

--
-- Name: treatment_treatment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.treatment_treatment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.treatment_treatment_id_seq OWNER TO postgres;

--
-- Name: treatment_treatment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.treatment_treatment_id_seq OWNED BY public.treatment.treatment_id;


--
-- Name: user_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_log (
    user_log_id integer NOT NULL,
    user_id integer,
    user_login timestamp(6) without time zone
);


ALTER TABLE public.user_log OWNER TO postgres;

--
-- Name: user_log_user_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_log_user_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_log_user_log_id_seq OWNER TO postgres;

--
-- Name: user_log_user_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_log_user_log_id_seq OWNED BY public.user_log.user_log_id;


--
-- Name: user_right; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_right (
    user_rights_id integer NOT NULL,
    user_id integer,
    function_scope integer,
    user_rights_function integer,
    user_rights_can_create integer,
    user_rights_can_view integer,
    user_rights_can_edit integer,
    user_rights_can_remove integer
);


ALTER TABLE public.user_right OWNER TO postgres;

--
-- Name: user_right_user_rights_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_right_user_rights_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_right_user_rights_id_seq OWNER TO postgres;

--
-- Name: user_right_user_rights_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_right_user_rights_id_seq OWNED BY public.user_right.user_rights_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    user_name character varying(35),
    user_pass character varying(65),
    user_employee integer
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO postgres;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: vitals; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vitals (
    vitals_id integer NOT NULL,
    encounter_id integer,
    heart_rate double precision,
    bp_systolic double precision,
    bp_diastolic double precision,
    capillary_refill integer,
    respiratory_rate double precision,
    saturation double precision,
    weight double precision,
    height double precision,
    temperature double precision,
    lowest_consciousness character varying(5),
    mental_status character varying(5),
    muac double precision,
    bleeding integer,
    shock integer,
    meningitis integer,
    confusion integer,
    seizure integer,
    coma integer,
    bacteraemia integer,
    hyperglycemia integer,
    hypoglycemia integer,
    other character varying(45)
);


ALTER TABLE public.vitals OWNER TO postgres;

--
-- Name: vitals_vitals_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.vitals_vitals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vitals_vitals_id_seq OWNER TO postgres;

--
-- Name: vitals_vitals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.vitals_vitals_id_seq OWNED BY public.vitals.vitals_id;


--
-- Name: clients id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clients ALTER COLUMN id SET DEFAULT nextval('public.clients_id_seq'::regclass);


--
-- Name: clinical clinical_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clinical ALTER COLUMN clinical_id SET DEFAULT nextval('public.clinical_clinical_id_seq'::regclass);


--
-- Name: discharge discharge_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discharge ALTER COLUMN discharge_id SET DEFAULT nextval('public.discharge_discharge_id_seq'::regclass);


--
-- Name: employee employee_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee ALTER COLUMN employee_id SET DEFAULT nextval('public.employee_employee_id_seq'::regclass);


--
-- Name: encounter encounter_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.encounter ALTER COLUMN encounter_id SET DEFAULT nextval('public.encounter_encounter_id_seq'::regclass);


--
-- Name: facility facility_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facility ALTER COLUMN facility_id SET DEFAULT nextval('public.facility_facility_id_seq'::regclass);


--
-- Name: lab lab_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lab ALTER COLUMN lab_id SET DEFAULT nextval('public.lab_lab_id_seq'::regclass);


--
-- Name: meta meta_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meta ALTER COLUMN meta_id SET DEFAULT nextval('public.meta_meta_id_seq'::regclass);


--
-- Name: meta_category meta_category_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meta_category ALTER COLUMN meta_category_id SET DEFAULT nextval('public.meta_category_meta_category_id_seq'::regclass);


--
-- Name: status status_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.status ALTER COLUMN status_id SET DEFAULT nextval('public.status_status_id_seq'::regclass);


--
-- Name: treatment treatment_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.treatment ALTER COLUMN treatment_id SET DEFAULT nextval('public.treatment_treatment_id_seq'::regclass);


--
-- Name: user_log user_log_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_log ALTER COLUMN user_log_id SET DEFAULT nextval('public.user_log_user_log_id_seq'::regclass);


--
-- Name: user_right user_rights_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_right ALTER COLUMN user_rights_id SET DEFAULT nextval('public.user_right_user_rights_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Name: vitals vitals_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vitals ALTER COLUMN vitals_id SET DEFAULT nextval('public.vitals_vitals_id_seq'::regclass);


--
-- Name: x_admission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.x_admission ALTER COLUMN id SET DEFAULT nextval('public.admission_id_seq'::regclass);


--
-- Name: x_admission_daily id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.x_admission_daily ALTER COLUMN id SET DEFAULT nextval('public.admission_daily_id_seq'::regclass);


--
-- Name: x_comorbidities id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.x_comorbidities ALTER COLUMN id SET DEFAULT nextval('public.comorbidities_id_seq'::regclass);


--
-- Name: x_encounter id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.x_encounter ALTER COLUMN id SET DEFAULT nextval('public.encounter_id_seq'::regclass);


--
-- Name: x_enrollment id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.x_enrollment ALTER COLUMN id SET DEFAULT nextval('public.enrollment_id_seq'::regclass);


--
-- Name: x_lab id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.x_lab ALTER COLUMN id SET DEFAULT nextval('public.lab_id_seq'::regclass);


--
-- Name: x_outcome id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.x_outcome ALTER COLUMN id SET DEFAULT nextval('public.outcome_id_seq'::regclass);


--
-- Name: x_rush id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.x_rush ALTER COLUMN id SET DEFAULT nextval('public.rush_id_seq'::regclass);


--
-- Name: x_symptoms id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.x_symptoms ALTER COLUMN id SET DEFAULT nextval('public.symptoms_id_seq'::regclass);


--
-- Data for Name: clients; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clients (id, uuid, firstname, lastname, othername, gender, date_of_birth, age, marital, nin, nationality, adm_date, adm_from, lab_no, cif_no, etu_no, case_no, occupation, occupation_aza, date_symptom_onset, date_isolation, pregnant, adm_ward, tb, asplenia, hep, diabetes, hiv, liver, malignancy, heart, pulmonary, kidney, neurologic, other, status, enter_on, enter_by, edit_on, edit_by, transfer, site) FROM stdin;
10	\N	Ramathan	Mujere	\N	1	2025-02-12	32	\N	\N	1	2025-02-12	Mbale RRH	\N	\N	002	\N	2	\N	2025-02-12	2025-02-12	2	\N	2	2	2	2	2	2	2	2	2	2	2	\N	Case	\N	\N	2025-02-12	6	1	1
11	20bf5e74-e90f-481c-42eb-21a0a76a09c3	Abdul	Majidu	Halim	1	2025-02-12	1.5	\N	\N	1	2025-02-01	\N	\N	\N	003	\N	\N	\N	2025-02-01	2025-02-01	\N	\N	2	2	2	\N	3	2	2	2	2	2	2	\N	Case	2025-02-12	6	2025-02-12	6	2	1
9	\N	Aisha	Nangobi	\N	2	1996-10-21	28	\N	\N	\N	2025-02-14	Quarantine Centre	\N	\N	001	\N	1	Mid Wife	2025-02-14	2025-02-14	2	1	2	2	2	2	\N	2	2	2	2	2	2	\N	Case	\N	\N	2025-02-14	3	1	1
8	\N	Hairab	Nangobi	\N	2	2025-02-14	15	\N	\N	\N	2025-02-01	\N	\N	\N	004	\N	\N	\N	2025-02-01	2025-02-01	2	\N	2	2	2	2	2	\N	2	2	2	2	2	\N	Case	\N	\N	2025-02-14	3	\N	1
12	8538ac94-8509-4071-5b0c-85ba93050d4f	Arthur	mwanje	\N	1	2025-02-15	42	1	\N	1	2025-02-15	\N	\N	\N	\N	\N	1	\N	2025-02-13	2025-02-15	\N	1	2	2	2	2	2	2	2	2	2	2	2	\N	Suspect	2025-02-15	4	2025-02-15	4	\N	1
\.


--
-- Data for Name: clinical; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clinical (clinical_id, encounter_id, fever, fatigue, weakness, malaise, myalgia, anorexia, sore_throat, headache, nausea, chest_pain, joint_pain, hiccups, cough, difficulty_breathing, difficulty_swallowing, abdominal_pain, diarrhoea, vomiting, irritability, dysphagia, unusual_bleeding, dehydration, shock, anuria, disorientation, agitation, seizure, meningitis, confusion, coma, bacteraemia, hyperglycemia, hypoglycemia, other_complications, aza_complications_specif, pharyngeal_erythema, pharyngeal_exudate, conjunctival_injection, oedema_face, tender_abdomen, sunken_eyes, tenting_skin, palpable_liver, palpable_spleen, jaundice, enlarged_lymph_nodes, lower_extremity_oedema, bleeding, bleeding_nose, bleeding_mouth, bleeding_vagina, bleeding_rectum, bleeding_sputum, bleeding_urine, bleeding_iv_site, bleeding_other, bleeding_other_specif, final_diagnosis, final_diagnosis_aza, outcome_discharge, outcome_discharge_if_hear, outcome_discharge_if_arth, outcome_discharge_if_abor, outcome_discharge_if_neur, outcome_discharge_if_ocul, outcome_discharge_if_extr, outcome_discharge_if_othe, outcome_discharge_if_aza, outcome_referred_facility) FROM stdin;
3	3	1	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	1	\N	\N	\N	\N	\N	\N	1	\N	\N	1	\N	\N	\N	\N	1	\N	\N	\N	1	1	1	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
4	4	1	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	1	\N	\N	\N	\N	1	\N	1	\N	\N	\N	\N	\N	\N	\N	\N	1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
5	5	1	1	1	2	1	1	2	1	2	2	2	2	2	2	2	2	1	1	2	\N	\N	\N	2	\N	\N	\N	2	2	2	2	2	3	3	\N	\N	2	2	1	2	1	2	2	2	2	2	1	2	2	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
6	6	1	1	1	2	1	1	2	1	2	2	2	2	2	2	2	2	1	1	2	\N	\N	\N	2	\N	\N	\N	2	2	2	2	2	3	3	\N	\N	2	2	1	2	1	2	2	2	2	2	1	2	2	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
7	7	1	1	1	2	1	1	2	1	2	2	2	2	2	2	2	2	1	1	2	\N	\N	\N	2	\N	\N	\N	2	2	2	2	2	3	3	\N	\N	2	2	1	2	1	2	2	2	2	2	1	2	2	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
8	8	1	2	\N	2	\N	1	3	3	3	3	3	2	1	2	2	3	2	2	2	\N	\N	\N	2	\N	\N	\N	2	2	2	2	3	2	2	\N	\N	2	2	2	2	2	2	2	2	2	2	2	2	2	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
9	9	1	1	1	2	1	1	2	1	2	2	2	2	2	2	2	2	1	1	2	\N	\N	\N	2	\N	\N	\N	2	2	2	2	2	3	3	\N	\N	2	2	1	2	1	2	2	2	2	2	1	2	2	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
10	10	1	1	1	1	1	1	2	1	2	2	1	2	2	2	2	2	2	2	2	\N	\N	\N	2	\N	\N	\N	2	2	2	2	2	2	2	\N	\N	2	2	2	2	2	2	2	2	2	2	2	2	2	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
11	11	2	2	2	2	2	2	2	2	2	2	2	2	2	2	2	1	1	2	2	\N	\N	\N	2	\N	\N	\N	2	2	2	2	2	2	2	\N	\N	2	2	2	2	2	2	2	2	2	2	2	2	2	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\.


--
-- Data for Name: discharge; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.discharge (discharge_id, client_id, discharge_date, final_diagnosis, final_diagnosis_other, discharge_outcome, discharge_seq_heari, discharge_seq_pregn, discharge_seq_ocula, discharge_seq_extre, discharge_seq_arthr, discharge_seq_neuro, discharge_seq_others, counselling_provided, discharging_officer, discharge_facility, discharge_seq_others_aza, entered_on, entered_by, updated_by, updated_on) FROM stdin;
\.


--
-- Data for Name: employee; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employee (employee_id, employee_fname, employee_lname, employee_sex, employee_email, employee_phone, employee_cadre, facility) FROM stdin;
1	Paul	Mbaka	\N	\N	\N	\N	\N
2	Mbale	Staff	\N	\N	\N	medical	2
3	Anasia Knight	Danielle	Female	chikazedaniella@gmail.com			2
4	Chris	Wagobera	Male	chris.wagobera@gmail.com			2
5	Emmanuel	Obuya	Male	emmobuya@gmail.com			2
7	DR MUTOO PAUL	\N		paulmutoo12@gmail.com	782150033	Case Management Team Lead	1
8	CHEMUTAI VIOLET	\N		Chemutaiviolet5@gmail.com	782581530	Team Lead Nurses	1
9	DR. KEBESU JASPER	\N		Jasperk41@gmail.com	779558168	SHO	1
10	DR SENYONDO FRANK	\N		Senyondofrankk@gmail.com	780116905	EM PHYSCIAN	1
11	DR MUSOKE TONNY	\N		mtsekikongo@gmail.com	702920510	PHYSCIAN	1
12	DR BUWADDA DANIEL 	\N		dbulwadda@gmail.com	772613436	CLINCAL MICROBIOLOGIST	1
13	DR. LUCAS ANYAYO GOODGAME	\N		anyayolucas@yahoo.com	751303840	PSYCHIATRIST	1
14	DR AKUGIZIBWE CHARLES	\N		akugizibwecharles14@gmail.com	783939946	SHO	1
17	MR TWESIGYE JULIUS	\N		juliustwesi26@gmail.com	782175180	MCO	1
18	DR NTAMBI CHARLES	\N		ntambicharles123@gmail.com	705604521	MO	1
19	DR ONGOMU WALTER	\N		walterongomupule@gmail.com	784225066	MO	1
20	MR MASABA DAVID	\N		dvdmsb@yahoo.com	703801115	MHPSS	1
21	MR KIMBOWA SAWUEL	\N		kimbowas@gmail.com	782777641	MHPSS	1
22	DR NAMUGENYI STELLA	\N		namuganyistella@gmail.com	782347500	MO	1
23	DR AKELLO GRACE	\N		graceaki99@gmail.com	779347282	MO	1
24	DDUNGU ROGERS	\N		rogerd.rogers@gmail.com	704519197	IT OFFICER	1
25	PAUL MALALI	\N		paulmalali8@gmail.com	773004242	IT OFFICER	1
26	DR. MAISO FRED	\N		maisofredjunior@gmail.com	755295138	MO	1
6	Patrick	Kafeero	Male	pkafeero2005@gmail.com			1
\.


--
-- Data for Name: encounter; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.encounter (encounter_id, encounter_type, encounter_time, client_id, encounter_date, managed_by, enter_on, enter_by) FROM stdin;
5	25	\N	8	2025-02-12	\N	\N	\N
6	25	\N	8	2025-02-12	\N	\N	\N
7	25	\N	9	2025-02-12	\N	\N	\N
8	25	\N	11	2025-02-12	4	\N	\N
9	25	\N	9	2025-02-14	\N	\N	\N
10	25	\N	8	2025-02-14	\N	\N	\N
11	26	15:45	12	2025-02-15	4	\N	\N
\.


--
-- Data for Name: facility; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.facility (facility_id, facility_name, facility_level) FROM stdin;
1	Mbale ETU	1
2	Mulago ETU	1
\.


--
-- Data for Name: lab; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lab (lab_id, encounter_id, specimen, sample_blood, sample_urine, sample_swab, sample_aza, ebola_rdt, ebola_rdt_date, ebola_rdt_results, ebola_pcr, ebola_pcr_aza, ebola_pcr_date, ebola_pcr_gp, ebola_pcr_gp_ct, ebola_pcr_np, ebola_pcr_np_ct, ebola_pcr_indeterminate, malaria_rdt_date, malaria_rdt_result, blood_culture_date, blood_culture_result, test_pos_infection, test_pos_infection_aza, haemoglobinuria, proteinuria, hematuria, blood_gas, ph, pco2, pao2, hco3, oxygen_therapy, alt_sgpt, ast_sgo, creatinine, potassium, urea, creatinine_kinase, calcium, sodium, alt_sgpt_nd, ast_sgo_nd, creatinine_nd, potassium_nd, urea_nd, creatinine_kinase_nd, calcium_nd, sodium_nd, glucose, lactate, haemoglobin, total_bilirubin, wbc_count, platelets, pt, aptt, glucose_nd, lactate_nd, haemoglobin_nd, total_bilirubin_nd, wbc_count_nd, platelets_nd, pt_nd, aptt_nd) FROM stdin;
\.


--
-- Data for Name: meta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.meta (meta_id, meta_category, meta_name, meta_order, meta_description, meta_link) FROM stdin;
1	1	NRH	1		\N
2	1	RRH	2		\N
3	1	GH	3		\N
4	1	HC IV	4		\N
5	1	HC III	5		\N
6	1	HC II	6		\N
7	1	Clinic	7		\N
8	2	Male	1		\N
9	2	Female	2		\N
14	4	Self	1		\N
15	4	All	2		\N
16	5	Yes	1		\N
17	5	No	2		\N
18	5	Unknown	1		\N
19	6	Present	1		\N
20	6	Present and tender	2		\N
21	7	Female	1		\N
22	7	Male	2		\N
23	7	Intersex	3		\N
24	7	Unknown	4		\N
25	8	Baseline	1		\N
26	8	First Encounter	2		\N
27	8	Follow-up	3		\N
10	3	Admin	1	Users	/users
12	3	Cases	3	Cases	/cases
32	3	Staff	9	Staff	/staff
33	3	Sites	10	Sites	/sites
11	3	Setting	2	Meta Data	/meta
13	3	Contacts	4	Contacts	/contacts
28	3	Alerts	5	Alerts	/alerts
29	3	Quaratine	6	Quaratine	/quaratine
30	3	CIF	7	Case Investigations	/cif
31	3	Deployment	8	Deployment	/deployment
34	3	Employees	11	Employees	/employees
\.


--
-- Data for Name: meta_category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.meta_category (meta_category_id, meta_category_name, meta_category_type) FROM stdin;
1	OrgUnit Level	User
2	Sex	User
3	User Rights Function	System
4	Function Scope	User
5	Response YesNo	User
6	Response Present	User
7	Partner Sex	User
8	Encounter Type	User
\.


--
-- Data for Name: status; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.status (status_id, client_id, status_date, status, status_notes, updated_by, updated_on) FROM stdin;
\.


--
-- Data for Name: treatment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.treatment (treatment_id, encounter_id, antibacterial, amoxicillin, ceftriaxone, cefixime, antibacterial_other, antibacterial_dose, antibacterial_route, antibacterial_freq, antimalarial, antimalarial_artesunate, antimalarial_arthemeter, antimalarial_al, antimalarial_aa, antimalarial_dose, antimalarial_route, antimalarial_freq, other_meds_specify, other_meds_dose, other_meds_route, other_meds_freq, ebola_experimental, ebola_experimental_if, oral, oral_ors, oral_ors_qty, oral_water, oral_water_qty, oral_other, oral_other_qty, iv, iv_qty, iv_using, iv_aza, access_type, blood_trans, oxygen_therapy, oxygen_qty, oxygen_with, vasopressors, renal, invasive) FROM stdin;
\.


--
-- Data for Name: user_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_log (user_log_id, user_id, user_login) FROM stdin;
\.


--
-- Data for Name: user_right; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_right (user_rights_id, user_id, function_scope, user_rights_function, user_rights_can_create, user_rights_can_view, user_rights_can_edit, user_rights_can_remove) FROM stdin;
3	2	0	10	0	0	0	0
4	2	0	11	0	0	0	0
5	2	14	12	1	1	1	0
6	2	0	13	0	0	0	0
7	2	0	28	0	0	0	0
8	2	0	29	0	0	0	0
9	2	0	30	0	0	0	0
10	2	0	31	0	0	0	0
1	1	15	10	1	1	1	1
2	1	15	11	1	1	0	0
27	1	15	12	1	1	1	1
28	1	15	13	1	1	1	0
29	1	15	28	1	1	1	1
30	1	15	29	0	1	0	0
31	1	15	30	0	1	0	0
32	1	15	31	1	1	0	0
53	5	0	10	0	0	0	0
54	5	14	12	1	1	1	0
55	5	0	32	0	0	0	0
56	5	0	33	0	0	0	0
57	5	0	11	0	0	0	0
58	5	0	13	0	0	0	0
59	5	0	28	0	0	0	0
60	5	0	29	0	0	0	0
61	5	0	30	0	0	0	0
62	5	0	31	0	0	0	0
63	6	0	10	0	0	0	0
64	6	14	12	1	1	1	0
65	6	0	32	0	0	0	0
66	6	0	33	0	0	0	0
67	6	0	11	0	0	0	0
68	6	0	13	0	0	0	0
69	6	0	28	0	0	0	0
70	6	0	29	0	0	0	0
71	6	0	30	0	0	0	0
72	6	0	31	0	0	0	0
73	7	0	10	0	0	0	0
74	7	14	12	1	1	1	0
75	7	0	32	0	0	0	0
76	7	0	33	0	0	0	0
77	7	0	11	0	0	0	0
78	7	0	13	0	0	0	0
79	7	0	28	0	0	0	0
80	7	0	29	0	0	0	0
81	7	0	30	0	0	0	0
82	7	0	31	0	0	0	0
83	8	0	10	0	0	0	0
84	8	14	12	1	1	1	0
85	8	0	32	0	0	0	0
86	8	0	33	0	0	0	0
87	8	0	11	0	0	0	0
88	8	0	13	0	0	0	0
89	8	0	28	0	0	0	0
90	8	0	29	0	0	0	0
91	8	0	30	0	0	0	0
92	8	0	31	0	0	0	0
34	3	15	12	1	1	1	0
35	3	0	32	0	0	0	0
36	3	0	33	0	0	0	0
37	3	0	11	0	0	0	0
38	3	0	13	0	0	0	0
39	3	0	28	0	0	0	0
40	3	0	29	0	0	0	0
41	3	0	30	0	0	0	0
42	3	0	31	0	0	0	0
43	4	0	10	0	0	0	0
44	4	0	12	1	1	1	0
45	4	0	32	0	0	0	0
46	4	0	33	0	0	0	0
47	4	0	11	0	0	0	0
48	4	0	13	0	0	0	0
49	4	0	28	0	0	0	0
50	4	0	29	0	0	0	0
51	4	0	30	0	0	0	0
52	4	0	31	0	0	0	0
93	9	0	10	0	0	0	0
94	9	14	12	1	1	1	0
95	9	0	32	0	0	0	0
96	9	0	33	0	0	0	0
97	9	0	11	0	0	0	0
98	9	0	13	0	0	0	0
99	9	0	28	0	0	0	0
100	9	0	29	0	0	0	0
101	9	0	30	0	0	0	0
102	9	0	31	0	0	0	0
103	10	0	10	0	0	0	0
104	10	14	12	1	1	1	0
105	10	0	32	0	0	0	0
106	10	0	33	0	0	0	0
107	10	0	11	0	0	0	0
108	10	0	13	0	0	0	0
109	10	0	28	0	0	0	0
110	10	0	29	0	0	0	0
111	10	0	30	0	0	0	0
112	10	0	31	0	0	0	0
113	11	0	10	0	0	0	0
114	11	14	12	1	1	1	0
115	11	0	32	0	0	0	0
116	11	0	33	0	0	0	0
117	11	0	11	0	0	0	0
118	11	0	13	0	0	0	0
119	11	0	28	0	0	0	0
120	11	0	29	0	0	0	0
121	11	0	30	0	0	0	0
122	11	0	31	0	0	0	0
123	12	0	10	0	0	0	0
124	12	14	12	1	1	1	0
125	12	0	32	0	0	0	0
126	12	0	33	0	0	0	0
127	12	0	11	0	0	0	0
128	12	0	13	0	0	0	0
129	12	0	28	0	0	0	0
130	12	0	29	0	0	0	0
131	12	0	30	0	0	0	0
132	12	0	31	0	0	0	0
133	13	0	10	0	0	0	0
134	13	15	12	1	1	1	0
135	13	0	32	0	0	0	0
136	13	0	33	0	0	0	0
137	13	0	11	0	0	0	0
138	13	0	13	0	0	0	0
139	13	0	28	0	0	0	0
140	13	0	29	0	0	0	0
141	13	0	30	0	0	0	0
142	13	0	31	0	0	0	0
143	14	0	10	0	0	0	0
144	14	14	12	1	1	1	0
145	14	0	32	0	0	0	0
146	14	0	33	0	0	0	0
147	14	0	11	0	0	0	0
148	14	0	13	0	0	0	0
149	14	0	28	0	0	0	0
150	14	0	29	0	0	0	0
151	14	0	30	0	0	0	0
152	14	0	31	0	0	0	0
153	15	0	10	0	0	0	0
154	15	14	12	1	1	1	0
155	15	0	32	0	0	0	0
156	15	0	33	0	0	0	0
157	15	0	11	0	0	0	0
158	15	0	13	0	0	0	0
159	15	0	28	0	0	0	0
160	15	0	29	0	0	0	0
161	15	0	30	0	0	0	0
162	15	0	31	0	0	0	0
163	16	0	10	0	0	0	0
164	16	14	12	1	1	1	0
165	16	0	32	0	0	0	0
166	16	0	33	0	0	0	0
167	16	0	11	0	0	0	0
168	16	0	13	0	0	0	0
169	16	0	28	0	0	0	0
170	16	0	29	0	0	0	0
171	16	0	30	0	0	0	0
172	16	0	31	0	0	0	0
173	26	0	10	0	0	0	0
174	26	14	12	1	1	1	0
175	26	0	32	0	0	0	0
176	26	0	33	0	0	0	0
177	26	0	11	0	0	0	0
178	26	0	13	0	0	0	0
179	26	0	28	0	0	0	0
180	26	0	29	0	0	0	0
181	26	0	30	0	0	0	0
182	26	0	31	0	0	0	0
183	27	0	10	0	0	0	0
184	27	14	12	1	1	1	0
185	27	0	32	0	0	0	0
186	27	0	33	0	0	0	0
187	27	0	11	0	0	0	0
188	27	0	13	0	0	0	0
189	27	0	28	0	0	0	0
190	27	0	29	0	0	0	0
191	27	0	30	0	0	0	0
192	27	0	31	0	0	0	0
193	28	0	10	0	0	0	0
194	28	14	12	1	1	1	0
195	28	0	32	0	0	0	0
196	28	0	33	0	0	0	0
197	28	0	11	0	0	0	0
198	28	0	13	0	0	0	0
199	28	0	28	0	0	0	0
200	28	0	29	0	0	0	0
201	28	0	30	0	0	0	0
202	28	0	31	0	0	0	0
203	29	0	10	0	0	0	0
204	29	14	12	1	1	1	0
205	29	0	32	0	0	0	0
206	29	0	33	0	0	0	0
207	29	0	11	0	0	0	0
208	29	0	13	0	0	0	0
209	29	0	28	0	0	0	0
210	29	0	29	0	0	0	0
211	29	0	30	0	0	0	0
212	29	0	31	0	0	0	0
213	30	0	10	0	0	0	0
214	30	14	12	1	1	1	0
215	30	0	32	0	0	0	0
216	30	0	33	0	0	0	0
217	30	0	11	0	0	0	0
218	30	0	13	0	0	0	0
219	30	0	28	0	0	0	0
220	30	0	29	0	0	0	0
221	30	0	30	0	0	0	0
222	30	0	31	0	0	0	0
223	31	0	10	0	0	0	0
224	31	14	12	1	1	1	0
225	31	0	32	0	0	0	0
226	31	0	33	0	0	0	0
227	31	0	11	0	0	0	0
228	31	0	13	0	0	0	0
229	31	0	28	0	0	0	0
230	31	0	29	0	0	0	0
231	31	0	30	0	0	0	0
232	31	0	31	0	0	0	0
233	32	0	10	0	0	0	0
234	32	14	12	1	1	1	0
235	32	0	32	0	0	0	0
236	32	0	33	0	0	0	0
237	32	0	11	0	0	0	0
238	32	0	13	0	0	0	0
239	32	0	28	0	0	0	0
240	32	0	29	0	0	0	0
241	32	0	30	0	0	0	0
242	32	0	31	0	0	0	0
243	33	0	10	0	0	0	0
244	33	14	12	1	1	1	0
245	33	0	32	0	0	0	0
246	33	0	33	0	0	0	0
247	33	0	11	0	0	0	0
248	33	0	13	0	0	0	0
249	33	0	28	0	0	0	0
250	33	0	29	0	0	0	0
251	33	0	30	0	0	0	0
252	33	0	31	0	0	0	0
253	34	0	10	0	0	0	0
254	34	14	12	1	1	1	0
255	34	0	32	0	0	0	0
256	34	0	33	0	0	0	0
257	34	0	11	0	0	0	0
258	34	0	13	0	0	0	0
259	34	0	28	0	0	0	0
260	34	0	29	0	0	0	0
261	34	0	30	0	0	0	0
262	34	0	31	0	0	0	0
263	35	0	10	0	0	0	0
264	35	14	12	1	1	1	0
265	35	0	32	0	0	0	0
266	35	0	33	0	0	0	0
267	35	0	11	0	0	0	0
268	35	0	13	0	0	0	0
269	35	0	28	0	0	0	0
270	35	0	29	0	0	0	0
271	35	0	30	0	0	0	0
272	35	0	31	0	0	0	0
273	36	0	10	0	0	0	0
274	36	14	12	1	1	1	0
275	36	0	32	0	0	0	0
276	36	0	33	0	0	0	0
277	36	0	11	0	0	0	0
278	36	0	13	0	0	0	0
279	36	0	28	0	0	0	0
280	36	0	29	0	0	0	0
281	36	0	30	0	0	0	0
282	36	0	31	0	0	0	0
33	3	0	10	0	0	0	0
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (user_id, user_name, user_pass, user_employee) FROM stdin;
2	mbaleuser	7c4a8d09ca3762af61e59520943dc26494f8941b	2
1	paul.mbaka@gmail.com	78b7bbf24d76aec1ddfbc43bc63186b636f40d3b	1
4	chris.wagobera@gmail.com	7c4a8d09ca3762af61e59520943dc26494f8941b	4
5	chikazedaniella@gmail.com	7c4a8d09ca3762af61e59520943dc26494f8941b	3
6	emmobuya@gmail.com	7c4a8d09ca3762af61e59520943dc26494f8941b	5
7	Chemutaiviolet5@gmail.com	7c4a8d09ca3762af61e59520943dc26494f8941b	8
8	Jasperk41@gmail.com	7c4a8d09ca3762af61e59520943dc26494f8941b	9
9	mtsekikongo@gmail.com	7c4a8d09ca3762af61e59520943dc26494f8941b	11
10	dbulwadda@gmail.com	7c4a8d09ca3762af61e59520943dc26494f8941b	12
11	anyayolucas@yahoo.com	7c4a8d09ca3762af61e59520943dc26494f8941b	13
13	akugizibwecharles14@gmail.com	7c4a8d09ca3762af61e59520943dc26494f8941b	14
14	ndawulafredrick78@gmail.com	7c4a8d09ca3762af61e59520943dc26494f8941b	16
16	juliustwesi26@gmail.com	7c4a8d09ca3762af61e59520943dc26494f8941b	17
28	ntambicharles123@gmail.com	7c4a8d09ca3762af61e59520943dc26494f8941b	18
29	walterongomupule@gmail.com	7c4a8d09ca3762af61e59520943dc26494f8941b	19
30	dvdmsb@yahoo.com	7c4a8d09ca3762af61e59520943dc26494f8941b	20
31	kimbowas@gmail.com	7c4a8d09ca3762af61e59520943dc26494f8941b	21
32	namuganyistella@gmail.com	7c4a8d09ca3762af61e59520943dc26494f8941b	22
33	graceaki99@gmail.com	7c4a8d09ca3762af61e59520943dc26494f8941b	23
34	rogerd.rogers@gmail.com	7c4a8d09ca3762af61e59520943dc26494f8941b	24
35	paulmalali8@gmail.com	7c4a8d09ca3762af61e59520943dc26494f8941b	25
36	maisofredjunior@gmail.com	7c4a8d09ca3762af61e59520943dc26494f8941b	26
3	pkafeero2005@gmail.com	7c4a8d09ca3762af61e59520943dc26494f8941b	6
\.


--
-- Data for Name: vitals; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.vitals (vitals_id, encounter_id, heart_rate, bp_systolic, bp_diastolic, capillary_refill, respiratory_rate, saturation, weight, height, temperature, lowest_consciousness, mental_status, muac, bleeding, shock, meningitis, confusion, seizure, coma, bacteraemia, hyperglycemia, hypoglycemia, other) FROM stdin;
3	3	90	90	90	1	0	0	0	0	0	\N	a	0	1	\N	\N	1	1	\N	\N	\N	\N	\N
4	4	90	90	90	1	0	0	0	0	0	\N	a	0	1	\N	\N	\N	\N	1	1	\N	\N	\N
5	5	121	128	58	2	0	0	0	0	37.8	\N	a	0	2	2	2	2	2	2	2	3	3	\N
6	6	121	128	58	2	0	0	0	0	37.8	\N	a	0	2	2	2	2	2	2	2	3	3	\N
7	7	121	128	58	2	0	0	0	0	37.8	\N	a	0	2	2	2	2	2	2	2	3	3	\N
8	8	0	0	0	2	0	0	13	0	0	\N	a	0	2	2	2	2	2	2	3	2	2	\N
9	9	121	128	58	2	0	0	0	0	38.5	\N	a	0	2	2	2	2	2	2	2	3	3	\N
10	10	0	0	0	2	0	0	0	0	37.9	\N	\N	0	2	2	2	2	2	2	2	2	2	\N
11	11	91	142	96	2	17	97	0	75	36.7	\N	a	0	2	2	2	2	2	2	2	2	2	\N
\.


--
-- Data for Name: x_admission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.x_admission (id, encounter_id, admitted, admission_date, discharge_date, remark, enter_by, enter_on) FROM stdin;
\.


--
-- Data for Name: x_admission_daily; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.x_admission_daily (id, encounter_id, note_date, note_by, note, enter_by, enter_on) FROM stdin;
\.


--
-- Data for Name: x_comorbidities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.x_comorbidities (id, encounter_id, note, chronic_cardiac, hypertension, chronic_pulmonary, asthma, chronic_kidney, chronic_liver, chronic_neurological, alcohol, sexually_transmitted, diabetes, smoking, tuberculosis_active, tuberculosis_previous, asplenia, malignant_neoplasm, neoplasm_present, immunosuppressants, immunosuppressants_specify, immunosuppressive_condition, immunosuppressive_condition_specify, n_gonorrhoeae, syphilis, hsv, chlamydia, sexually_others, hiv, art_regiment, cd4, viral_load, enter_by, enter_on) FROM stdin;
\.


--
-- Data for Name: x_encounter; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.x_encounter (id, enrollment_id, encounter_type, date, temp, heart_rate, resp_rate, bp_sys, bp_dia, dehydration, alertness, height, weight, enter_by, enter_on) FROM stdin;
\.


--
-- Data for Name: x_enrollment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.x_enrollment (id, case_no, lab_no, patient_no, national_id, other_id_name, other_id_value, firstname, lastname, sex, age_year, age_monthss, age_days, dob, date_of_enrolment, facility_id, enrolled_by, ishealthworker, islabworker, ppe_at_infection, tribe, pregnant, gestational_week, lmnp, recently_pregnant, pregnant_22, tetanus_vac, known_link, sexually_active, sexualpartner_sex, travel, countries, animal_contact, animal_describe, symptom_onset, enter_by, enter_on) FROM stdin;
\.


--
-- Data for Name: x_lab; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.x_lab (id, encounter_id, lab_date, test, results, done, alt, ast, creatinine, potassium, urea, creatinine_kinase, calcium, sodium, crp, glucose, lactate, haemoglobin, total, wbc, platelets, prothrombin, activated, other, other_specify_name, other_specify_value, alt_1, ast_1, creatinine_1, potassium_1, urea_1, creatinine_kinase_1, calcium_1, sodium_1, crp_1, glucose_1, lactate_1, haemoglobin_1, total_1, wbc_1, platelets_1, prothrombin_1, activated_1, other_1, enter_by, enter_on) FROM stdin;
\.


--
-- Data for Name: x_outcome; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.x_outcome (id, enrollment_id, movement_date, movement_type, note, enter_by, enter_on) FROM stdin;
\.


--
-- Data for Name: x_rush; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.x_rush (id, encounter_id, lesions_body, lesions_right_leg, lesions_right_arm, lesions_left_leg, lesions_left_arm, lesions_genitals, lesions_oral, lesions_perianal_1, face, nares, mouth, chest, abdomen, back, perianal, genitals, palms, arms, forearms, thighs, legs, soles, other, other_specify, macule, papule, early_vesicle, small_pustule, umbilicated_pustule, ulcerated_lesion, crusting_mature, partially_removed, pain_at_site, pain_score, lesions_perianal_2, shade_location_lesions, enter_by, enter_on) FROM stdin;
\.


--
-- Data for Name: x_symptoms; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.x_symptoms (id, encounter_id, on_set, note, sore_throat, muscle_aches, headache, ocular_symptoms, fatigue_malaise, oral_pain, nausea, vomiting, diarrhoea, rectal_pain, lymphadenopathy, proctitis, pain_swallowing, difficulty_swallowing, pain_urination, urethritis, chest_pain, decreased_urine, dizzinessinteger, joint_pain, psychologic, symptom_other, axillary, cervical, inguinal, lymphadenopathy_other, other_symptom, other_lymphadenopathy, enter_by, enter_on, fever, fatigue) FROM stdin;
\.


--
-- Name: admission_daily_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admission_daily_id_seq', 1, false);


--
-- Name: admission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admission_id_seq', 1, false);


--
-- Name: clients_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.clients_id_seq', 12, true);


--
-- Name: clinical_clinical_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.clinical_clinical_id_seq', 11, true);


--
-- Name: comorbidities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.comorbidities_id_seq', 1, false);


--
-- Name: discharge_discharge_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.discharge_discharge_id_seq', 1, false);


--
-- Name: employee_employee_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.employee_employee_id_seq', 26, true);


--
-- Name: encounter_encounter_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.encounter_encounter_id_seq', 11, true);


--
-- Name: encounter_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.encounter_id_seq', 1, false);


--
-- Name: enrollment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.enrollment_id_seq', 1, false);


--
-- Name: facility_facility_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.facility_facility_id_seq', 1, true);


--
-- Name: lab_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.lab_id_seq', 1, false);


--
-- Name: lab_lab_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.lab_lab_id_seq', 1, false);


--
-- Name: meta_category_meta_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.meta_category_meta_category_id_seq', 1, false);


--
-- Name: meta_meta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.meta_meta_id_seq', 34, true);


--
-- Name: outcome_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.outcome_id_seq', 1, false);


--
-- Name: rush_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rush_id_seq', 1, false);


--
-- Name: status_status_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.status_status_id_seq', 1, false);


--
-- Name: symptoms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.symptoms_id_seq', 1, false);


--
-- Name: treatment_treatment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.treatment_treatment_id_seq', 1, false);


--
-- Name: user_log_user_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_log_user_log_id_seq', 1, false);


--
-- Name: user_right_user_rights_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_right_user_rights_id_seq', 282, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_user_id_seq', 36, true);


--
-- Name: vitals_vitals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.vitals_vitals_id_seq', 11, true);


--
-- Name: x_admission_daily admission_daily_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.x_admission_daily
    ADD CONSTRAINT admission_daily_pkey PRIMARY KEY (id);


--
-- Name: x_admission admission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.x_admission
    ADD CONSTRAINT admission_pkey PRIMARY KEY (id);


--
-- Name: clients clients_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clients
    ADD CONSTRAINT clients_pkey PRIMARY KEY (id);


--
-- Name: clinical clinical_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clinical
    ADD CONSTRAINT clinical_pkey PRIMARY KEY (clinical_id);


--
-- Name: x_comorbidities comorbidities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.x_comorbidities
    ADD CONSTRAINT comorbidities_pkey PRIMARY KEY (id);


--
-- Name: discharge discharge_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.discharge
    ADD CONSTRAINT discharge_pkey PRIMARY KEY (discharge_id);


--
-- Name: employee employee_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (employee_id);


--
-- Name: x_encounter encounter_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.x_encounter
    ADD CONSTRAINT encounter_pkey PRIMARY KEY (id);


--
-- Name: encounter encounter_pkey1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.encounter
    ADD CONSTRAINT encounter_pkey1 PRIMARY KEY (encounter_id);


--
-- Name: x_enrollment enrollment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.x_enrollment
    ADD CONSTRAINT enrollment_pkey PRIMARY KEY (id);


--
-- Name: facility facility_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facility
    ADD CONSTRAINT facility_pkey PRIMARY KEY (facility_id);


--
-- Name: x_lab lab_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.x_lab
    ADD CONSTRAINT lab_pkey PRIMARY KEY (id);


--
-- Name: lab lab_pkey1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lab
    ADD CONSTRAINT lab_pkey1 PRIMARY KEY (lab_id);


--
-- Name: meta_category meta_category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meta_category
    ADD CONSTRAINT meta_category_pkey PRIMARY KEY (meta_category_id);


--
-- Name: meta meta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meta
    ADD CONSTRAINT meta_pkey PRIMARY KEY (meta_id);


--
-- Name: x_outcome outcome_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.x_outcome
    ADD CONSTRAINT outcome_pkey PRIMARY KEY (id);


--
-- Name: x_rush rush_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.x_rush
    ADD CONSTRAINT rush_pkey PRIMARY KEY (id);


--
-- Name: status status_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.status
    ADD CONSTRAINT status_pkey PRIMARY KEY (status_id);


--
-- Name: x_symptoms symptoms_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.x_symptoms
    ADD CONSTRAINT symptoms_pkey PRIMARY KEY (id);


--
-- Name: treatment treatment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.treatment
    ADD CONSTRAINT treatment_pkey PRIMARY KEY (treatment_id);


--
-- Name: user_log user_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_log
    ADD CONSTRAINT user_log_pkey PRIMARY KEY (user_log_id);


--
-- Name: user_right user_right_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_right
    ADD CONSTRAINT user_right_pkey PRIMARY KEY (user_rights_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: vitals vitals_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vitals
    ADD CONSTRAINT vitals_pkey PRIMARY KEY (vitals_id);


--
-- PostgreSQL database dump complete
--

