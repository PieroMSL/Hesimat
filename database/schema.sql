-- Diseño inicial para PostgreSQL. No ejecutado ni conectado al formulario.
CREATE TABLE contacts (
 id bigint GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
 name text NOT NULL,
 phone text NOT NULL,
 created_at timestamptz NOT NULL DEFAULT now()
);
CREATE TABLE inquiries (
 id bigint GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
 contact_id bigint NOT NULL REFERENCES contacts(id),
 service text NOT NULL CHECK (service IN ('consultoria','construccion','general')),
 project_location text NOT NULL,
 message text NOT NULL,
 status text NOT NULL DEFAULT 'nuevo' CHECK (status IN ('nuevo','contactado','cotizado','ganado','perdido')),
 created_at timestamptz NOT NULL DEFAULT now()
);
CREATE INDEX inquiries_status_created ON inquiries(status, created_at DESC);
CREATE TABLE follow_ups (
 id bigint GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
 inquiry_id bigint NOT NULL REFERENCES inquiries(id),
 note text NOT NULL,
 due_at timestamptz,
 created_at timestamptz NOT NULL DEFAULT now()
);
