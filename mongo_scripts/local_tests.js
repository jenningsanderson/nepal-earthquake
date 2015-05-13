db.nodes.aggregate(
  [
    {
      $group : {
        _id : { user: "$user", changeset: "$changeset"},
        total : { $sum : 1 }
      }
    },
    { 
      $sort : { total : -1 } 
    }
  ]
)