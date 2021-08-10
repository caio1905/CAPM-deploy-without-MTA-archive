using db as model from '../db/data-model';

service master @(requires : 'authenticated-user') {
    
    entity Author @(restrict : [{
        grant : ['READ','CREATE','UPDATE','DELETE'],
        to : 'authenticated-user'
    }]) as projection on model.Author;

    entity Book @(restrict : [{
        grant : ['CREATE','READ','UPDATE', 'DELETE'],
        to : 'autheticated-user'
    }]) as projection on model.Book;

    type userScope {
        identifield : Boolean;
        authenticated : Boolean;
    }

    type user {
        user : String;
        scope : userScope;
    }
}
