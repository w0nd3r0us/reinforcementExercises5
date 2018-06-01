project = {
  committee: ["Stella", "Salma", "Kai"],
  title: "Very Important Project",
  due_date: "December 14, 2019",
  id: "3284",
  steps: [
    {description: "conduct interviews",
     due_date: "August 1, 2018"
    },
    {description: "code of conduct",
     due_date: "January 1, 2018"
    },
    {description: "compile results",
     due_date: "November 10, 2018"
    },
    {description: "version 1",
     due_date: "January 15, 2019"
    },
    {description: "revisions",
     due_date: "March 30, 2019"
    },
    {description: "version 2",
     due_date: "July 12, 2019"
    },
    {description: "final edit",
     due_date: "October 1, 2019"
    },
    {description: "final version",
     due_date: "November 20, 2019"
    },
    {description: "Wrap up",
     due_date: "December 1, 2019"
    }
  ]
}
#
# cycle through first array
# draw names from :commitee
# distribute evenly through steps
# 9 steps so 3 tasks each
#
# logic
#
# count steps
# steps counted / 3
# inject committee member
# p project[:committee].count
# p project[:steps].count
# dont put into empty array put names into project[:steps] each
p project
p "--------"

count = 0
project[:steps].each do |step|
  step[:person] = project[:committee][count]
  count += 1
  if count == 3
    count = 0
  end
end
# project[:steps][0][:person] = "TEST"
p project
