'use strict'

project = {}
meetings = []

meeting1=
  _id: "3a08278f-f88b-4afa-8a4c-5df4d8872f02"
  name: "Kickoff meeting"
  date: "2014-12-01T14:45:00.000Z"
  location: "Client's office, 440 N. Wolfe Rd. - Sunnyvale, CA 94085"
  brief: "The meeting aimed to launch the project showing the client how the default configuration works."
  author:
    _id: "df1140a1-084b-4465-babb-29933411a07e"
    fullName: "Matías Barahona"
    email: "mibaraho@gmail.com"
    profilePictureUrl: "/path/to/pictures/0a991e6e-60eb-4b1f-9e06-81cbd49af74c.png"
  attendees:[
    _id: "df1140a1-084b-4465-babb-29933411a07e"
    fullName: "Matías Barahona"
    email: "mibaraho@gmail.com"
    profilePictureUrl: "/path/to/pictures/0a991e6e-60eb-4b1f-9e06-81cbd49af74c.png"
   ,
    _id: "88bb884c-9893-4264-9040-393ee56065cf",
    fullName: "Rodrigo Dueñas",
    email: "rduenasf@gmail.com",
    profilePictureUrl: "/path/to/pictures/2d704828-7971-41e6-8a75-567b6e403142.png"
   ,
   _id: "507cf739-140a-48f4-8bd6-97d5dc66707f",
   fullName: "Andrés Gómez",
   email: "agomez@gmail.com"
   ]
  highlights:
    commitments: 4
    comments: 6
    alerts: 2
    notes: 6
  keywords:[
    "kickoff"
	,
    "commitment"
	,
    "launch"
  ]
meeting2=
  _id: "59de0bc3-7540-48cd-a889-e5f0387ab192"
  name: "Special requirements definition"
  date: "2014-12-08T14:45:00.000Z"
  brief: "In this meeting the client gave the definition to customize the solution to their needs"
  author:
    _id: "df1140a1-084b-4465-babb-29933411a07e"
    fullName: "Matías Barahona"
    email: "mibaraho@gmail.com"
    profilePictureUrl: "/path/to/pictures/0a991e6e-60eb-4b1f-9e06-81cbd49af74c.png"
  attendees: [
    _id: "df1140a1-084b-4465-babb-29933411a07e"
    fullName: "Matías Barahona",
    email: "mibaraho@gmail.com",
    profilePictureUrl: "/path/to/pictures/0a991e6e-60eb-4b1f-9e06-81cbd49af74c.png"
   ,
    _id: "507cf739-140a-48f4-8bd6-97d5dc66707f"
    fullName: "Andrés Gómez"
    email: "agomez@gmail.com"
  ]
  highlights:
    "commitments": 3,
    "comments": 3,
    "alerts": 5,
    "notes": 2
  keywords: [
    "question"
   ,
    "product"
  ]

meeting3=
  _id: "adfac741-c679-4c7c-9746-4e25916f0d9c"
  name: "Implementation planning and definition"
  date: "2014-12-20T14:45:00.000Z"
  brief: "In this meeting the team shared the implementation plan"
  location: "Starbucks, Apoquindo 6094, Santiago"
  author:
    _id: "88bb884c-9893-4264-9040-393ee56065cf"
    fullName: "Rodrigo Dueñas"
    email: "rduenasf@gmail.com"
    profilePictureUrl: "/path/to/pictures/2d704828-7971-41e6-8a75-567b6e403142.png"
  attendees: [
    _id: "88bb884c-9893-4264-9040-393ee56065cf"
    fullName: "Rodrigo Dueñas"
    email: "rduenasf@gmail.com"
    profilePictureUrl: "/path/to/pictures/2d704828-7971-41e6-8a75-567b6e403142.png"
   ,
    _id: "507cf739-140a-48f4-8bd6-97d5dc66707f"
    fullName: "Andrés Gómez"
    email: "agomez@gmail.com"
  ]
  highlights:
    commitments: 1
    comments: 2
    alerts: 3
    notes: 4
  keywords: [
    "Gantt chart"
   ,
    "Due date"
   ,
    "Effort"
  ]
meeting4=
  _id: "0051b231-8f3f-46dc-baae-9e51fb2d41b9",
  name: "First demostration",
  date: "2014-12-27T14:45:00.000Z",
  brief: "First demostration of the product considering most of the customizations",
  location: "Client's office, 440 N. Wolfe Rd. - Sunnyvale, CA 94085",
  author:
    _id: "df1140a1-084b-4465-babb-29933411a07e",
    fullName: "Matías Barahona",
    email: "mibaraho@gmail.com",
    profilePictureUrl: "/path/to/pictures/0a991e6e-60eb-4b1f-9e06-81cbd49af74c.png"
  attendees: [
    _id: "88bb884c-9893-4264-9040-393ee56065cf",
    fullName: "Rodrigo Dueñas",
    email: "rduenasf@gmail.com",
    profilePictureUrl: "/path/to/pictures/2d704828-7971-41e6-8a75-567b6e403142.png"
   ,
    _id: "df1140a1-084b-4465-babb-29933411a07e",
    fullName: "Matías Barahona",
    email: "mibaraho@gmail.com",
    profilePictureUrl: "/path/to/pictures/0a991e6e-60eb-4b1f-9e06-81cbd49af74c.png"
   ,
    _id: "507cf739-140a-48f4-8bd6-97d5dc66707f",
    fullName: "Andrés Gómez",
    email: "agomez@gmail.com"
  ]
  highlights:
    commitments: 7
    comments: 5
    alerts: 8
    notes: 3
	
meeting5=
    _id: "b5be9fd1-0dd2-4fe2-967b-90b842ed7bfd"
    name: "Final feedback and release plan"
    date: "2015-01-05T14:45:00.000Z"
    brief: "Final details, considering mainly user interface and colors"
    location: "Client's office, 440 N. Wolfe Rd. - Sunnyvale, CA 94085"
    author:
      _id: "df1140a1-084b-4465-babb-29933411a07e"
      fullName: "Matías Barahona"
      email: "mibaraho@gmail.com"
      profilePictureUrl: "/path/to/pictures/0a991e6e-60eb-4b1f-9e06-81cbd49af74c.png"
    attendees: [
      _id: "88bb884c-9893-4264-9040-393ee56065cf"
      fullName: "Rodrigo Dueñas"
      email: "rduenasf@gmail.com"
      profilePictureUrl: "/path/to/pictures/2d704828-7971-41e6-8a75-567b6e403142.png"
     ,
      _id: "df1140a1-084b-4465-babb-29933411a07e"
      fullName: "Matías Barahona"
      email: "mibaraho@gmail.com"
      profilePictureUrl: "/path/to/pictures/0a991e6e-60eb-4b1f-9e06-81cbd49af74c.png"
     ,
      _id: "507cf739-140a-48f4-8bd6-97d5dc66707f"
      fullName: "Andrés Gómez"
      email: "agomez@gmail.com"
     ,
      _id: "9e0a34c8-d21b-409b-8f45-21e0e3828226"
      fullName: "Felipe Peirano"
      email: "peirano@gmail.com"
    ]
    highlights:
      commitments: 5,
      comments: 8,
      alerts: 2,
      notes: 1
    keywords: [
      "Feedback"
     ,
      "Release plan"
     ,
      "Details"
    ]

meeting6=
  _id: "24edc93f-a0fe-47d6-802e-9cd9c625db61"
  name: "Release approval and test"
  date: "2015-01-18T14:45:00.000Z"
  brief: "Full demostration in staging environment"
  location: "Client's office, 440 N. Wolfe Rd. - Sunnyvale, CA 94085"
  author:
    _id: "88bb884c-9893-4264-9040-393ee56065cf"
    fullName: "Rodrigo Dueñas"
    email: "rduenasf@gmail.com"
    profilePictureUrl: "/path/to/pictures/2d704828-7971-41e6-8a75-567b6e403142.png"
  attendees: [
    _id: "88bb884c-9893-4264-9040-393ee56065cf"
    fullName: "Rodrigo Dueñas"
    email: "rduenasf@gmail.com"
    profilePictureUrl: "/path/to/pictures/2d704828-7971-41e6-8a75-567b6e403142.png"
   ,
    _id: "df1140a1-084b-4465-babb-29933411a07e"
    fullName: "Matías Barahona"
    email: "mibaraho@gmail.com"
    profilePictureUrl: "/path/to/pictures/0a991e6e-60eb-4b1f-9e06-81cbd49af74c.png"
   ,
    _id: "507cf739-140a-48f4-8bd6-97d5dc66707f"
    fullName: "Andrés Gómez"
    email: "agomez@gmail.com"
  ]
  highlights:
    commitments: 1
    comments: 1
    alerts: 1
    notes: 7
  keywords: [
    "final"
   ,
    "feedback"
   ,
    "detail"
  ]	
	
meeting7=
  _id: "464047c2-bd6d-4a20-aa89-55819b13d2ac"
  name: "Closing meeting"
  date: "2015-01-29T14:45:00.000Z"
  brief: "Closing meeting to deliver the project"
  location: "Client's office, 440 N. Wolfe Rd. - Sunnyvale, CA 94085"
  author:
    _id: "88bb884c-9893-4264-9040-393ee56065cf"
    fullName: "Rodrigo Dueñas"
    email: "rduenasf@gmail.com"
    profilePictureUrl: "/path/to/pictures/2d704828-7971-41e6-8a75-567b6e403142.png"
  attendees: [
    _id: "88bb884c-9893-4264-9040-393ee56065cf"
    fullName: "Rodrigo Dueñas"
    email: "rduenasf@gmail.com"
   ,
    _id: "df1140a1-084b-4465-babb-29933411a07e"
    fullName: "Matías Barahona"
    email: "mibaraho@gmail.com"
    profilePictureUrl: "/path/to/pictures/0a991e6e-60eb-4b1f-9e06-81cbd49af74c.png"
   ,
    _id: "507cf739-140a-48f4-8bd6-97d5dc66707f"
    fullName: "Andrés Gómez"
    email: "agomez@gmail.com"
  ]
  highlights:
    commitments: 0,
    comments: 6,
    alerts: 0,
    notes: 0
  keywords: [
    "End"
   ,
    "Finished"
   ,
    "Done"
  ]

meetings.push meeting1
meetings.push meeting2
meetings.push meeting3
meetings.push meeting4
meetings.push meeting5
meetings.push meeting6
project.meetings = meetings

angular.module 'mmApp'
.factory 'ProjectService', ->
  return {
    project: -> project
  }
