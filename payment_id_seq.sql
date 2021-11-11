
			CREATE SEQUENCE public.payment_id_seq
		    INCREMENT 1
		    START 16050
		    MINVALUE 1
		    MAXVALUE 2147483647
		    CACHE 1;

			ALTER SEQUENCE public.payment_id_seq
	   		OWNER TO postgres;

	   	ALTER TABLE payment ALTER COLUMN id SET DEFAULT nextval('payment_id_seq');
			ALTER TABLE payment ALTER COLUMN id SET NOT NULL;
			ALTER SEQUENCE payment_id_seq OWNED BY payment.id;
	   	