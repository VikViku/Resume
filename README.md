# Resume - (nebaigtas)

Puslapis, skirtas trumpai ir įdomiai pristatyti save potencialiam darbdaviui. Sekcijos: apie mane, patirtis, akademiniai pasiekimai, įgūdžiai ir gebėjimai, kalbų mokėjimo lygiai, pomėgiai, kontaktai. Galimybė atsisiųsti pilną CV pdf formatu. Puslapis pasiekiamas trimis kalbomis: lietuvių, italų bei anglų.

## Galerija

Nuotraukų albumas su aprašymais, komentarais, likes.

## Kontaktai

* Susisiekimo forma:
  * Vardas
  * Email
  * Tekstas


##Application

## Models

* User; has_many_experiences; has_many_educations; has_many_workshops;
		has_many_languages; has_many_skills; has_many_interests
  * user_id (pk)
  * first_name
  * last_name
  * title
  * desc
  * date_of_birth
  * phone
  * address
  * city
  * country
  * email
  * skype
  * isAdmin
  * isOwner
  * photo 

* Experience; belongs_to_user
  * experience_id (pk)
  * workplace
  * occupation
  * desc
  * start_date
  * end_date
  * user_id (fk)

* Education; belongs_to_user
  * education_id (pk)
  * university
  * degree
  * start_date
  * end_date
  * user_id (fk)


 * Workshop; belongs_to_user
  * workshop_id (pk)
  * title
  * date
  * user_id (fk)

* Language; belongs_to_user
  * language_id (pk)
  * name
  * level
  * user_id (fk)

* Skill; belongs_to_user
  * skill_id (pk)
  * title
  * level
  * user_id (fk)

* Interest; belongs_to_user
  * interest_id (pk)
  * title
  * picture
  * user_id (fk)

* Contact
  * contact_id (pk)
  * name
  * email
  * message