--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3
-- Dumped by pg_dump version 16.3

-- Started on 2025-02-11 10:25:47

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'SQL_ASCII';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE IF EXISTS cases;
--
-- TOC entry 5029 (class 1262 OID 34299)
-- Name: cases; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE cases WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';


ALTER DATABASE cases OWNER TO postgres;

\connect cases

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'SQL_ASCII';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 216 (class 1259 OID 34303)
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
-- TOC entry 217 (class 1259 OID 34306)
-- Name: admission_daily_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admission_daily_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admission_daily_id_seq OWNER TO postgres;

--
-- TOC entry 5030 (class 0 OID 0)
-- Dependencies: 217
-- Name: admission_daily_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admission_daily_id_seq OWNED BY public.x_admission_daily.id;


--
-- TOC entry 215 (class 1259 OID 34300)
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
-- TOC entry 218 (class 1259 OID 34307)
-- Name: admission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admission_id_seq OWNER TO postgres;

--
-- TOC entry 5031 (class 0 OID 0)
-- Dependencies: 218
-- Name: admission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admission_id_seq OWNED BY public.x_admission.id;


--
-- TOC entry 248 (class 1259 OID 34414)
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
-- TOC entry 247 (class 1259 OID 34413)
-- Name: clients_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.clients_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.clients_id_seq OWNER TO postgres;

--
-- TOC entry 5032 (class 0 OID 0)
-- Dependencies: 247
-- Name: clients_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.clients_id_seq OWNED BY public.clients.id;


--
-- TOC entry 254 (class 1259 OID 34452)
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
    bleeding_other_specif character varying(45)
);


ALTER TABLE public.clinical OWNER TO postgres;

--
-- TOC entry 253 (class 1259 OID 34451)
-- Name: clinical_clinical_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.clinical_clinical_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.clinical_clinical_id_seq OWNER TO postgres;

--
-- TOC entry 5033 (class 0 OID 0)
-- Dependencies: 253
-- Name: clinical_clinical_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.clinical_clinical_id_seq OWNED BY public.clinical.clinical_id;


--
-- TOC entry 219 (class 1259 OID 34308)
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
-- TOC entry 220 (class 1259 OID 34311)
-- Name: comorbidities_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.comorbidities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.comorbidities_id_seq OWNER TO postgres;

--
-- TOC entry 5034 (class 0 OID 0)
-- Dependencies: 220
-- Name: comorbidities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.comorbidities_id_seq OWNED BY public.x_comorbidities.id;


--
-- TOC entry 221 (class 1259 OID 34312)
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
-- TOC entry 222 (class 1259 OID 34315)
-- Name: employee_employee_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.employee_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.employee_employee_id_seq OWNER TO postgres;

--
-- TOC entry 5035 (class 0 OID 0)
-- Dependencies: 222
-- Name: employee_employee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.employee_employee_id_seq OWNED BY public.employee.employee_id;


--
-- TOC entry 250 (class 1259 OID 34438)
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
-- TOC entry 249 (class 1259 OID 34437)
-- Name: encounter_encounter_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.encounter_encounter_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.encounter_encounter_id_seq OWNER TO postgres;

--
-- TOC entry 5036 (class 0 OID 0)
-- Dependencies: 249
-- Name: encounter_encounter_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.encounter_encounter_id_seq OWNED BY public.encounter.encounter_id;


--
-- TOC entry 223 (class 1259 OID 34316)
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
-- TOC entry 224 (class 1259 OID 34319)
-- Name: encounter_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.encounter_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.encounter_id_seq OWNER TO postgres;

--
-- TOC entry 5037 (class 0 OID 0)
-- Dependencies: 224
-- Name: encounter_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.encounter_id_seq OWNED BY public.x_encounter.id;


--
-- TOC entry 225 (class 1259 OID 34320)
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
-- TOC entry 226 (class 1259 OID 34323)
-- Name: enrollment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.enrollment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.enrollment_id_seq OWNER TO postgres;

--
-- TOC entry 5038 (class 0 OID 0)
-- Dependencies: 226
-- Name: enrollment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.enrollment_id_seq OWNED BY public.x_enrollment.id;


--
-- TOC entry 227 (class 1259 OID 34324)
-- Name: facility; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.facility (
    facility_id integer NOT NULL,
    facility_name character varying(65),
    facility_level integer
);


ALTER TABLE public.facility OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 34327)
-- Name: facility_facility_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.facility_facility_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.facility_facility_id_seq OWNER TO postgres;

--
-- TOC entry 5039 (class 0 OID 0)
-- Dependencies: 228
-- Name: facility_facility_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.facility_facility_id_seq OWNED BY public.facility.facility_id;


--
-- TOC entry 256 (class 1259 OID 34488)
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
-- TOC entry 229 (class 1259 OID 34328)
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
-- TOC entry 230 (class 1259 OID 34331)
-- Name: lab_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.lab_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.lab_id_seq OWNER TO postgres;

--
-- TOC entry 5040 (class 0 OID 0)
-- Dependencies: 230
-- Name: lab_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.lab_id_seq OWNED BY public.x_lab.id;


--
-- TOC entry 255 (class 1259 OID 34487)
-- Name: lab_lab_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.lab_lab_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.lab_lab_id_seq OWNER TO postgres;

--
-- TOC entry 5041 (class 0 OID 0)
-- Dependencies: 255
-- Name: lab_lab_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.lab_lab_id_seq OWNED BY public.lab.lab_id;


--
-- TOC entry 231 (class 1259 OID 34332)
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
-- TOC entry 232 (class 1259 OID 34335)
-- Name: meta_category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.meta_category (
    meta_category_id integer NOT NULL,
    meta_category_name character varying(46),
    meta_category_type character varying(25)
);


ALTER TABLE public.meta_category OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 34338)
-- Name: meta_category_meta_category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.meta_category_meta_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.meta_category_meta_category_id_seq OWNER TO postgres;

--
-- TOC entry 5042 (class 0 OID 0)
-- Dependencies: 233
-- Name: meta_category_meta_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.meta_category_meta_category_id_seq OWNED BY public.meta_category.meta_category_id;


--
-- TOC entry 234 (class 1259 OID 34339)
-- Name: meta_meta_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.meta_meta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.meta_meta_id_seq OWNER TO postgres;

--
-- TOC entry 5043 (class 0 OID 0)
-- Dependencies: 234
-- Name: meta_meta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.meta_meta_id_seq OWNED BY public.meta.meta_id;


--
-- TOC entry 235 (class 1259 OID 34340)
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
-- TOC entry 236 (class 1259 OID 34343)
-- Name: outcome_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.outcome_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.outcome_id_seq OWNER TO postgres;

--
-- TOC entry 5044 (class 0 OID 0)
-- Dependencies: 236
-- Name: outcome_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.outcome_id_seq OWNED BY public.x_outcome.id;


--
-- TOC entry 237 (class 1259 OID 34344)
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
-- TOC entry 238 (class 1259 OID 34347)
-- Name: rush_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rush_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.rush_id_seq OWNER TO postgres;

--
-- TOC entry 5045 (class 0 OID 0)
-- Dependencies: 238
-- Name: rush_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rush_id_seq OWNED BY public.x_rush.id;


--
-- TOC entry 239 (class 1259 OID 34348)
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
-- TOC entry 240 (class 1259 OID 34351)
-- Name: symptoms_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.symptoms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.symptoms_id_seq OWNER TO postgres;

--
-- TOC entry 5046 (class 0 OID 0)
-- Dependencies: 240
-- Name: symptoms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.symptoms_id_seq OWNED BY public.x_symptoms.id;


--
-- TOC entry 258 (class 1259 OID 34495)
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
-- TOC entry 257 (class 1259 OID 34494)
-- Name: treatment_treatment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.treatment_treatment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.treatment_treatment_id_seq OWNER TO postgres;

--
-- TOC entry 5047 (class 0 OID 0)
-- Dependencies: 257
-- Name: treatment_treatment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.treatment_treatment_id_seq OWNED BY public.treatment.treatment_id;


--
-- TOC entry 241 (class 1259 OID 34352)
-- Name: user_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_log (
    user_log_id integer NOT NULL,
    user_id integer,
    user_login timestamp(6) without time zone
);


ALTER TABLE public.user_log OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 34355)
-- Name: user_log_user_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_log_user_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.user_log_user_log_id_seq OWNER TO postgres;

--
-- TOC entry 5048 (class 0 OID 0)
-- Dependencies: 242
-- Name: user_log_user_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_log_user_log_id_seq OWNED BY public.user_log.user_log_id;


--
-- TOC entry 243 (class 1259 OID 34356)
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
-- TOC entry 244 (class 1259 OID 34359)
-- Name: user_right_user_rights_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_right_user_rights_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.user_right_user_rights_id_seq OWNER TO postgres;

--
-- TOC entry 5049 (class 0 OID 0)
-- Dependencies: 244
-- Name: user_right_user_rights_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_right_user_rights_id_seq OWNED BY public.user_right.user_rights_id;


--
-- TOC entry 245 (class 1259 OID 34360)
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
-- TOC entry 246 (class 1259 OID 34363)
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_user_id_seq OWNER TO postgres;

--
-- TOC entry 5050 (class 0 OID 0)
-- Dependencies: 246
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- TOC entry 252 (class 1259 OID 34445)
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
-- TOC entry 251 (class 1259 OID 34444)
-- Name: vitals_vitals_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.vitals_vitals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.vitals_vitals_id_seq OWNER TO postgres;

--
-- TOC entry 5051 (class 0 OID 0)
-- Dependencies: 251
-- Name: vitals_vitals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.vitals_vitals_id_seq OWNED BY public.vitals.vitals_id;


--
-- TOC entry 4787 (class 2604 OID 34417)
-- Name: clients id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clients ALTER COLUMN id SET DEFAULT nextval('public.clients_id_seq'::regclass);


--
-- TOC entry 4790 (class 2604 OID 34455)
-- Name: clinical clinical_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clinical ALTER COLUMN clinical_id SET DEFAULT nextval('public.clinical_clinical_id_seq'::regclass);


--
-- TOC entry 4774 (class 2604 OID 34367)
-- Name: employee employee_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee ALTER COLUMN employee_id SET DEFAULT nextval('public.employee_employee_id_seq'::regclass);


--
-- TOC entry 4788 (class 2604 OID 34441)
-- Name: encounter encounter_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.encounter ALTER COLUMN encounter_id SET DEFAULT nextval('public.encounter_encounter_id_seq'::regclass);


--
-- TOC entry 4777 (class 2604 OID 34370)
-- Name: facility facility_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facility ALTER COLUMN facility_id SET DEFAULT nextval('public.facility_facility_id_seq'::regclass);


--
-- TOC entry 4791 (class 2604 OID 34491)
-- Name: lab lab_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lab ALTER COLUMN lab_id SET DEFAULT nextval('public.lab_lab_id_seq'::regclass);


--
-- TOC entry 4779 (class 2604 OID 34372)
-- Name: meta meta_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meta ALTER COLUMN meta_id SET DEFAULT nextval('public.meta_meta_id_seq'::regclass);


--
-- TOC entry 4780 (class 2604 OID 34373)
-- Name: meta_category meta_category_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meta_category ALTER COLUMN meta_category_id SET DEFAULT nextval('public.meta_category_meta_category_id_seq'::regclass);


--
-- TOC entry 4792 (class 2604 OID 34498)
-- Name: treatment treatment_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.treatment ALTER COLUMN treatment_id SET DEFAULT nextval('public.treatment_treatment_id_seq'::regclass);


--
-- TOC entry 4784 (class 2604 OID 34377)
-- Name: user_log user_log_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_log ALTER COLUMN user_log_id SET DEFAULT nextval('public.user_log_user_log_id_seq'::regclass);


--
-- TOC entry 4785 (class 2604 OID 34378)
-- Name: user_right user_rights_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_right ALTER COLUMN user_rights_id SET DEFAULT nextval('public.user_right_user_rights_id_seq'::regclass);


--
-- TOC entry 4786 (class 2604 OID 34379)
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- TOC entry 4789 (class 2604 OID 34448)
-- Name: vitals vitals_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vitals ALTER COLUMN vitals_id SET DEFAULT nextval('public.vitals_vitals_id_seq'::regclass);


--
-- TOC entry 4771 (class 2604 OID 34364)
-- Name: x_admission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.x_admission ALTER COLUMN id SET DEFAULT nextval('public.admission_id_seq'::regclass);


--
-- TOC entry 4772 (class 2604 OID 34365)
-- Name: x_admission_daily id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.x_admission_daily ALTER COLUMN id SET DEFAULT nextval('public.admission_daily_id_seq'::regclass);


--
-- TOC entry 4773 (class 2604 OID 34366)
-- Name: x_comorbidities id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.x_comorbidities ALTER COLUMN id SET DEFAULT nextval('public.comorbidities_id_seq'::regclass);


--
-- TOC entry 4775 (class 2604 OID 34368)
-- Name: x_encounter id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.x_encounter ALTER COLUMN id SET DEFAULT nextval('public.encounter_id_seq'::regclass);


--
-- TOC entry 4776 (class 2604 OID 34369)
-- Name: x_enrollment id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.x_enrollment ALTER COLUMN id SET DEFAULT nextval('public.enrollment_id_seq'::regclass);


--
-- TOC entry 4778 (class 2604 OID 34371)
-- Name: x_lab id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.x_lab ALTER COLUMN id SET DEFAULT nextval('public.lab_id_seq'::regclass);


--
-- TOC entry 4781 (class 2604 OID 34374)
-- Name: x_outcome id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.x_outcome ALTER COLUMN id SET DEFAULT nextval('public.outcome_id_seq'::regclass);


--
-- TOC entry 4782 (class 2604 OID 34375)
-- Name: x_rush id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.x_rush ALTER COLUMN id SET DEFAULT nextval('public.rush_id_seq'::regclass);


--
-- TOC entry 4783 (class 2604 OID 34376)
-- Name: x_symptoms id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.x_symptoms ALTER COLUMN id SET DEFAULT nextval('public.symptoms_id_seq'::regclass);


--
-- TOC entry 5013 (class 0 OID 34414)
-- Dependencies: 248
-- Data for Name: clients; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.clients VALUES (2, NULL, 'Erie', 'Berro', 'Ojok', 2, '2025-02-06', 0, 5, 'CUY987654s', 2, '2025-02-06', 'Nabumali', 'L009', 'CIF016', 'E0980', 'C008', 1, 'test occupation', '2025-02-06', '2025-02-06', 1, '2', 1, 1, 1, 2, 1, 1, 2, 2, 3, 3, 1, 'nasing', 'Suspect', NULL, NULL, '2025-02-06', 1, 2, 1);
INSERT INTO public.clients VALUES (3, NULL, 'Paul', 'Opoka', 'Okello', 2, '2025-02-06', 0, 6, 'C7903GHSFT', 1, '2025-02-06', 'Nakawa HC IV', 'L0034', 'CIF8900', 'EC001', 'C005', 1, 'Ocups', '2025-02-06', '2025-02-06', 1, '1', 1, 2, 3, 3, 2, 2, 1, 2, 1, 1, 1, 'nasing', 'Case', NULL, NULL, '2025-02-06', 1, 1, 1);
INSERT INTO public.clients VALUES (4, NULL, 'Adede', 'AA', NULL, 2, '2011-11-30', 0, NULL, NULL, 2, '2025-02-04', NULL, 'L999', 'CIF6000', 'ETU5555', 'C9956', 1, 'Nurse', '2025-01-22', '2025-02-03', 1, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Case', NULL, NULL, '2025-02-06', 1, 2, 1);
INSERT INTO public.clients VALUES (5, NULL, 'Paul', 'Mbaka', 'Erie', 1, '2025-02-06', 22, 4, 'C7903GHSFT', 2, '2025-02-06', 'MBay', 'L0035', 'CIF0001', 'ETU0003', 'C0007', 1, 'Ocups', '2025-02-06', '2025-02-06', 2, '2', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 'Ulcers', 'Suspect', NULL, NULL, '2025-02-06', 1, NULL, 1);
INSERT INTO public.clients VALUES (1, NULL, 'Paul', 'Mbaka', 'Erie', 1, '2016-09-28', 44, 4, 'C7903GHSFT', 1, '2025-02-05', 'MBay', 'L002', 'CIF004', 'ETU0067', 'C987', 1, 'Nurse', '2025-02-01', '2025-02-05', 3, '1', 1, 2, 2, 2, 3, 1, 1, 1, 2, 2, 1, 'Ulcers', NULL, NULL, NULL, '2025-02-06', 1, 1, 2);


--
-- TOC entry 5019 (class 0 OID 34452)
-- Dependencies: 254
-- Data for Name: clinical; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.clinical VALUES (1, 1, 1, 2, 1, 1, 1, 2, 1, 1, 1, 2, 2, 3, 1, 1, 2, 3, 2, 1, 1, NULL, NULL, NULL, 1, NULL, NULL, NULL, 1, 1, 2, 1, 2, 1, 1, NULL, NULL, 1, 1, 2, 2, 1, 2, 3, 2, 1, 1, 3, 2, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, 1, 'Skin');


--
-- TOC entry 4986 (class 0 OID 34312)
-- Dependencies: 221
-- Data for Name: employee; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.employee VALUES (1, 'Paul', 'Mbaka', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.employee VALUES (2, 'Mbale', 'Staff', NULL, NULL, NULL, 'medical', 2);


--
-- TOC entry 5015 (class 0 OID 34438)
-- Dependencies: 250
-- Data for Name: encounter; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.encounter VALUES (1, 25, '12:30', 2, '2025-02-10', 2, NULL, NULL);


--
-- TOC entry 4992 (class 0 OID 34324)
-- Dependencies: 227
-- Data for Name: facility; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.facility VALUES (1, 'Mbale ETU', 1);
INSERT INTO public.facility VALUES (2, 'Mulago ETU', 1);


--
-- TOC entry 5021 (class 0 OID 34488)
-- Dependencies: 256
-- Data for Name: lab; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4996 (class 0 OID 34332)
-- Dependencies: 231
-- Data for Name: meta; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.meta VALUES (1, 1, 'NRH', 1, '', NULL);
INSERT INTO public.meta VALUES (2, 1, 'RRH', 2, '', NULL);
INSERT INTO public.meta VALUES (3, 1, 'GH', 3, '', NULL);
INSERT INTO public.meta VALUES (4, 1, 'HC IV', 4, '', NULL);
INSERT INTO public.meta VALUES (5, 1, 'HC III', 5, '', NULL);
INSERT INTO public.meta VALUES (6, 1, 'HC II', 6, '', NULL);
INSERT INTO public.meta VALUES (7, 1, 'Clinic', 7, '', NULL);
INSERT INTO public.meta VALUES (8, 2, 'Male', 1, '', NULL);
INSERT INTO public.meta VALUES (9, 2, 'Female', 2, '', NULL);
INSERT INTO public.meta VALUES (14, 4, 'Self', 1, '', NULL);
INSERT INTO public.meta VALUES (15, 4, 'All', 2, '', NULL);
INSERT INTO public.meta VALUES (16, 5, 'Yes', 1, '', NULL);
INSERT INTO public.meta VALUES (17, 5, 'No', 2, '', NULL);
INSERT INTO public.meta VALUES (18, 5, 'Unknown', 1, '', NULL);
INSERT INTO public.meta VALUES (19, 6, 'Present', 1, '', NULL);
INSERT INTO public.meta VALUES (20, 6, 'Present and tender', 2, '', NULL);
INSERT INTO public.meta VALUES (21, 7, 'Female', 1, '', NULL);
INSERT INTO public.meta VALUES (22, 7, 'Male', 2, '', NULL);
INSERT INTO public.meta VALUES (23, 7, 'Intersex', 3, '', NULL);
INSERT INTO public.meta VALUES (24, 7, 'Unknown', 4, '', NULL);
INSERT INTO public.meta VALUES (25, 8, 'Baseline', 1, '', NULL);
INSERT INTO public.meta VALUES (26, 8, 'First Encounter', 2, '', NULL);
INSERT INTO public.meta VALUES (27, 8, 'Follow-up', 3, '', NULL);
INSERT INTO public.meta VALUES (10, 3, 'Admin', 1, 'Users', '/users');
INSERT INTO public.meta VALUES (12, 3, 'Cases', 3, 'Cases', '/cases');
INSERT INTO public.meta VALUES (32, 3, 'Staff', 9, 'Staff', '/staff');
INSERT INTO public.meta VALUES (33, 3, 'Sites', 10, 'Sites', '/sites');
INSERT INTO public.meta VALUES (11, 3, 'Setting', 2, 'Meta Data', '/meta');
INSERT INTO public.meta VALUES (13, 3, 'Contacts', 4, 'Contacts', '/contacts');
INSERT INTO public.meta VALUES (28, 3, 'Alerts', 5, 'Alerts', '/alerts');
INSERT INTO public.meta VALUES (29, 3, 'Quaratine', 6, 'Quaratine', '/quaratine');
INSERT INTO public.meta VALUES (30, 3, 'CIF', 7, 'Case Investigations', '/cif');
INSERT INTO public.meta VALUES (31, 3, 'Deployment', 8, 'Deployment', '/deployment');


--
-- TOC entry 4997 (class 0 OID 34335)
-- Dependencies: 232
-- Data for Name: meta_category; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.meta_category VALUES (1, 'OrgUnit Level', 'User');
INSERT INTO public.meta_category VALUES (2, 'Sex', 'User');
INSERT INTO public.meta_category VALUES (3, 'User Rights Function', 'System');
INSERT INTO public.meta_category VALUES (4, 'Function Scope', 'User');
INSERT INTO public.meta_category VALUES (5, 'Response YesNo', 'User');
INSERT INTO public.meta_category VALUES (6, 'Response Present', 'User');
INSERT INTO public.meta_category VALUES (7, 'Partner Sex', 'User');
INSERT INTO public.meta_category VALUES (8, 'Encounter Type', 'User');


--
-- TOC entry 5023 (class 0 OID 34495)
-- Dependencies: 258
-- Data for Name: treatment; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 5006 (class 0 OID 34352)
-- Dependencies: 241
-- Data for Name: user_log; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 5008 (class 0 OID 34356)
-- Dependencies: 243
-- Data for Name: user_right; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.user_right VALUES (3, 2, 0, 10, 0, 0, 0, 0);
INSERT INTO public.user_right VALUES (4, 2, 0, 11, 0, 0, 0, 0);
INSERT INTO public.user_right VALUES (5, 2, 14, 12, 1, 1, 1, 0);
INSERT INTO public.user_right VALUES (6, 2, 0, 13, 0, 0, 0, 0);
INSERT INTO public.user_right VALUES (7, 2, 0, 28, 0, 0, 0, 0);
INSERT INTO public.user_right VALUES (8, 2, 0, 29, 0, 0, 0, 0);
INSERT INTO public.user_right VALUES (9, 2, 0, 30, 0, 0, 0, 0);
INSERT INTO public.user_right VALUES (10, 2, 0, 31, 0, 0, 0, 0);
INSERT INTO public.user_right VALUES (1, 1, 15, 10, 1, 1, 1, 1);
INSERT INTO public.user_right VALUES (2, 1, 15, 11, 1, 1, 0, 0);
INSERT INTO public.user_right VALUES (27, 1, 15, 12, 1, 1, 1, 1);
INSERT INTO public.user_right VALUES (28, 1, 15, 13, 1, 1, 1, 0);
INSERT INTO public.user_right VALUES (29, 1, 15, 28, 1, 1, 1, 1);
INSERT INTO public.user_right VALUES (30, 1, 15, 29, 0, 1, 0, 0);
INSERT INTO public.user_right VALUES (31, 1, 15, 30, 0, 1, 0, 0);
INSERT INTO public.user_right VALUES (32, 1, 15, 31, 1, 1, 0, 0);


--
-- TOC entry 5010 (class 0 OID 34360)
-- Dependencies: 245
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users VALUES (2, 'mbaleuser', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2);
INSERT INTO public.users VALUES (1, 'paul.mbaka@gmail.com', '78b7bbf24d76aec1ddfbc43bc63186b636f40d3b', 1);


--
-- TOC entry 5017 (class 0 OID 34445)
-- Dependencies: 252
-- Data for Name: vitals; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.vitals VALUES (1, 1, 12, 120, 98, 1, 23, 89, 89, 155, 36, NULL, 'p', 80, 1, 1, 1, 2, 1, 1, 2, 1, 1, 'testing others');


--
-- TOC entry 4980 (class 0 OID 34300)
-- Dependencies: 215
-- Data for Name: x_admission; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4981 (class 0 OID 34303)
-- Dependencies: 216
-- Data for Name: x_admission_daily; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4984 (class 0 OID 34308)
-- Dependencies: 219
-- Data for Name: x_comorbidities; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4988 (class 0 OID 34316)
-- Dependencies: 223
-- Data for Name: x_encounter; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4990 (class 0 OID 34320)
-- Dependencies: 225
-- Data for Name: x_enrollment; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4994 (class 0 OID 34328)
-- Dependencies: 229
-- Data for Name: x_lab; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 5000 (class 0 OID 34340)
-- Dependencies: 235
-- Data for Name: x_outcome; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 5002 (class 0 OID 34344)
-- Dependencies: 237
-- Data for Name: x_rush; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 5004 (class 0 OID 34348)
-- Dependencies: 239
-- Data for Name: x_symptoms; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 5052 (class 0 OID 0)
-- Dependencies: 217
-- Name: admission_daily_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admission_daily_id_seq', 1, false);


--
-- TOC entry 5053 (class 0 OID 0)
-- Dependencies: 218
-- Name: admission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admission_id_seq', 1, false);


--
-- TOC entry 5054 (class 0 OID 0)
-- Dependencies: 247
-- Name: clients_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.clients_id_seq', 5, true);


--
-- TOC entry 5055 (class 0 OID 0)
-- Dependencies: 253
-- Name: clinical_clinical_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.clinical_clinical_id_seq', 1, true);


--
-- TOC entry 5056 (class 0 OID 0)
-- Dependencies: 220
-- Name: comorbidities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.comorbidities_id_seq', 1, false);


--
-- TOC entry 5057 (class 0 OID 0)
-- Dependencies: 222
-- Name: employee_employee_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.employee_employee_id_seq', 2, true);


--
-- TOC entry 5058 (class 0 OID 0)
-- Dependencies: 249
-- Name: encounter_encounter_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.encounter_encounter_id_seq', 1, true);


--
-- TOC entry 5059 (class 0 OID 0)
-- Dependencies: 224
-- Name: encounter_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.encounter_id_seq', 1, false);


--
-- TOC entry 5060 (class 0 OID 0)
-- Dependencies: 226
-- Name: enrollment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.enrollment_id_seq', 1, false);


--
-- TOC entry 5061 (class 0 OID 0)
-- Dependencies: 228
-- Name: facility_facility_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.facility_facility_id_seq', 1, true);


--
-- TOC entry 5062 (class 0 OID 0)
-- Dependencies: 230
-- Name: lab_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.lab_id_seq', 1, false);


--
-- TOC entry 5063 (class 0 OID 0)
-- Dependencies: 255
-- Name: lab_lab_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.lab_lab_id_seq', 1, false);


--
-- TOC entry 5064 (class 0 OID 0)
-- Dependencies: 233
-- Name: meta_category_meta_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.meta_category_meta_category_id_seq', 1, false);


--
-- TOC entry 5065 (class 0 OID 0)
-- Dependencies: 234
-- Name: meta_meta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.meta_meta_id_seq', 33, true);


--
-- TOC entry 5066 (class 0 OID 0)
-- Dependencies: 236
-- Name: outcome_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.outcome_id_seq', 1, false);


--
-- TOC entry 5067 (class 0 OID 0)
-- Dependencies: 238
-- Name: rush_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rush_id_seq', 1, false);


--
-- TOC entry 5068 (class 0 OID 0)
-- Dependencies: 240
-- Name: symptoms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.symptoms_id_seq', 1, false);


--
-- TOC entry 5069 (class 0 OID 0)
-- Dependencies: 257
-- Name: treatment_treatment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.treatment_treatment_id_seq', 1, false);


--
-- TOC entry 5070 (class 0 OID 0)
-- Dependencies: 242
-- Name: user_log_user_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_log_user_log_id_seq', 1, false);


--
-- TOC entry 5071 (class 0 OID 0)
-- Dependencies: 244
-- Name: user_right_user_rights_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_right_user_rights_id_seq', 32, true);


--
-- TOC entry 5072 (class 0 OID 0)
-- Dependencies: 246
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_user_id_seq', 2, true);


--
-- TOC entry 5073 (class 0 OID 0)
-- Dependencies: 251
-- Name: vitals_vitals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.vitals_vitals_id_seq', 1, true);


--
-- TOC entry 4796 (class 2606 OID 34381)
-- Name: x_admission_daily admission_daily_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.x_admission_daily
    ADD CONSTRAINT admission_daily_pkey PRIMARY KEY (id);


--
-- TOC entry 4794 (class 2606 OID 34383)
-- Name: x_admission admission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.x_admission
    ADD CONSTRAINT admission_pkey PRIMARY KEY (id);


--
-- TOC entry 4826 (class 2606 OID 34421)
-- Name: clients clients_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clients
    ADD CONSTRAINT clients_pkey PRIMARY KEY (id);


--
-- TOC entry 4832 (class 2606 OID 34457)
-- Name: clinical clinical_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clinical
    ADD CONSTRAINT clinical_pkey PRIMARY KEY (clinical_id);


--
-- TOC entry 4798 (class 2606 OID 34385)
-- Name: x_comorbidities comorbidities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.x_comorbidities
    ADD CONSTRAINT comorbidities_pkey PRIMARY KEY (id);


--
-- TOC entry 4800 (class 2606 OID 34387)
-- Name: employee employee_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (employee_id);


--
-- TOC entry 4802 (class 2606 OID 34389)
-- Name: x_encounter encounter_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.x_encounter
    ADD CONSTRAINT encounter_pkey PRIMARY KEY (id);


--
-- TOC entry 4828 (class 2606 OID 34443)
-- Name: encounter encounter_pkey1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.encounter
    ADD CONSTRAINT encounter_pkey1 PRIMARY KEY (encounter_id);


--
-- TOC entry 4804 (class 2606 OID 34391)
-- Name: x_enrollment enrollment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.x_enrollment
    ADD CONSTRAINT enrollment_pkey PRIMARY KEY (id);


--
-- TOC entry 4806 (class 2606 OID 34393)
-- Name: facility facility_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facility
    ADD CONSTRAINT facility_pkey PRIMARY KEY (facility_id);


--
-- TOC entry 4808 (class 2606 OID 34395)
-- Name: x_lab lab_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.x_lab
    ADD CONSTRAINT lab_pkey PRIMARY KEY (id);


--
-- TOC entry 4834 (class 2606 OID 34493)
-- Name: lab lab_pkey1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lab
    ADD CONSTRAINT lab_pkey1 PRIMARY KEY (lab_id);


--
-- TOC entry 4812 (class 2606 OID 34397)
-- Name: meta_category meta_category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meta_category
    ADD CONSTRAINT meta_category_pkey PRIMARY KEY (meta_category_id);


--
-- TOC entry 4810 (class 2606 OID 34399)
-- Name: meta meta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meta
    ADD CONSTRAINT meta_pkey PRIMARY KEY (meta_id);


--
-- TOC entry 4814 (class 2606 OID 34401)
-- Name: x_outcome outcome_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.x_outcome
    ADD CONSTRAINT outcome_pkey PRIMARY KEY (id);


--
-- TOC entry 4816 (class 2606 OID 34403)
-- Name: x_rush rush_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.x_rush
    ADD CONSTRAINT rush_pkey PRIMARY KEY (id);


--
-- TOC entry 4818 (class 2606 OID 34405)
-- Name: x_symptoms symptoms_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.x_symptoms
    ADD CONSTRAINT symptoms_pkey PRIMARY KEY (id);


--
-- TOC entry 4836 (class 2606 OID 34502)
-- Name: treatment treatment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.treatment
    ADD CONSTRAINT treatment_pkey PRIMARY KEY (treatment_id);


--
-- TOC entry 4820 (class 2606 OID 34407)
-- Name: user_log user_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_log
    ADD CONSTRAINT user_log_pkey PRIMARY KEY (user_log_id);


--
-- TOC entry 4822 (class 2606 OID 34409)
-- Name: user_right user_right_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_right
    ADD CONSTRAINT user_right_pkey PRIMARY KEY (user_rights_id);


--
-- TOC entry 4824 (class 2606 OID 34411)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- TOC entry 4830 (class 2606 OID 34450)
-- Name: vitals vitals_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vitals
    ADD CONSTRAINT vitals_pkey PRIMARY KEY (vitals_id);


-- Completed on 2025-02-11 10:25:47

--
-- PostgreSQL database dump complete
--

