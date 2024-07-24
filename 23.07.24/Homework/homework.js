console.log(ValidateLogin('yoav!', '123'));
// Variable Declaration and Boolean Expressions

let firstName = 'yoav',
  lastName = 'meirovitz';
let age = 27;
let isStudent = true;
let isAdult = age > 18;
let isJohn = firstName === 'john';
console.log('is john', isJohn);

//Functoins and String Methods
function greet(firstName, lastName) {
  let fullName = `${firstName} ${lastName}`.toUpperCase();
  return `Hello ${fullName}! Welcome to the IITC Bootcamp`;
}
console.log(greet('yoav', 'meirovitz'));

//If and Else
function CheckAge(age) {
  if (age < 13) {
    return 'you are a child';
  } else if (age >= 13 && age <= 17) {
    return 'you are a teenager';
  } else if (age >= 18 && age <= 64) {
    return ' you are an adult';
  } else {
    return 'you are a senior';
  }
}

console.log(CheckAge(65));

function getDayMessage(dayOfWeek) {
  switch (dayOfWeek) {
    case 'sunday':
      console.log('good sunday');
      break;
    case 'monday':
      console.log('good monday');
      break;
    default:
      console.log('Invalid day!');
  }
}

getDayMessage('monday');

// Complex Conditions
function checkEligibility(age, isStudent) {
  if (age < 18 && isStudent === true) {
    return 'you are a minor student';
  }
  if (age < 18 && isStudent === false) {
    return 'You are a minor non-student.';
  }
  if (age >= 18 && age <= 24 && isStudent === true) {
    return 'You are a young adult student.';
  }
  if (age >= 18 && age <= 24 && isStudent === false) {
    return 'You are a young adult non-student.';
  }
  if (age >= 25 && isStudent === true) {
    return 'You are an adult student.';
  }
  if (age >= 25 && isStudent === false) {
    return 'You are an adult non-student.';
  }
}

console.log(checkEligibility(25, false));

// String Comparison and Manipulation
function formatName(name) {
  let formatedName = name.trim().toLowerCase();
  if (formatName === 'admin') {
    return `Welcome, admin!`;
  } else {
    return `Hello, ${formatedName}`;
  }
}

console.log(formatName('    YOAV'));

// Nested If Statements:
function checkDiscount(age, isMember) {
  if (age < 18) {
    if (isMember) {
      return 'you get a 20% discount';
    } else {
      return 'you get a 10% discount';
    }
  }
  if (age >= 65) {
    if (isMember) {
      return 'you get a 30% discount';
    } else {
      return 'you get a 20% dicount';
    }
  } else {
    if (isMember) {
      return 'you get a 10% discount';
    } else {
      return 'No discount available';
    }
  }
}

age = 40;
let isMember = true;
console.log(checkDiscount(age, isMember));

//Login Validation:
function ValidateLogin(username, password) {
  let storeUsername = 'yoav!';
  let storedPassword = '123';

  if (username === storeUsername && storedPassword === password) {
    return 'Login successful.';
  } else {
    return 'invalid username or password';
  }
}

// Substring Extraction
function extractInitials(firstName, lastName) {
  let firstNameCharUpperCase = firstName.charAt(0).toUpperCase();
  let lastNameCharUpperCase = lastName.charAt(0).toUpperCase();
  return `${firstNameCharUpperCase}.${lastNameCharUpperCase}`;
}
console.log(extractInitials('yoav', 'meirovitz'));

function maskEmail(email) {
  let indexAtSign = email.indexOf('@');
  let subStringEmailName = email.substring(0, indexAtSign);
  return email.replace(subStringEmailName, '*****');
}
console.log(maskEmail('yoavmeirvitz187@gmail.com'));

//Nested If-Else:
function gradeCalculator(score) {
  if (score > 90) {
    return 'A';
  } else if (score >= 80) {
    return 'B';
  } else if (score >= 70) {
    return 'C';
  } else if (score >= 60) {
    return 'D';
  } else {
    return 'F';
  }
}
console.log(gradeCalculator(54));

//Complex Boolean Conditions:
function canVote(age, isCitizen) {
  if (age >= 18 && isCitizen) {
    return 'you are eligible to vote.';
  } else {
    return ' you are not eligible to vote.';
  }
}
console.log(canVote(19, true));

function convertToUpperCaseAndAddAge(name, age) {
  let upperCaseName = name.toUpperCase();
  //   console.log(age);
  let stringAge = age.toString();
  //   console.log(stringAge);
  return `${upperCaseName}${stringAge}`;
}
console.log(convertToUpperCaseAndAddAge('yoav', 167));

//Capitalize First Letter:
function capitalize(word) {
  let firstChar = word.charAt(0);
  return word.replace(firstChar, firstChar.toUpperCase());
}
console.log(capitalize('nadav'));

function containsSubstring(mainString, subString) {
  //   console.log(mainString.indexOf(subString));
  if (mainString.indexOf(subString) >= 0) {
    return true;
  } else {
    return false;
  }
}
console.log(containsSubstring('yoavmei', 'vme'));
