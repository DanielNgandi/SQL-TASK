const { body } = require('express-validator');

const createValidationSchema = {
  firstName: {
    isString: {
      errorMessage: 'Name must be a string'
    },
    notEmpty: {
      errorMessage: 'Name cannot be empty'
    }
  },
  lastName: {
    isString: {
      errorMessage: 'Course must be a string'
    },
    notEmpty: {  
      errorMessage: 'Course cannot be empty'
    }
  }

};

module.exports = {
  createValidationSchema
};