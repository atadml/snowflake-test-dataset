connection: "video_editing_small"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: video_editing_small_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: video_editing_small_default_datagroup

explore: analytics_events {}

explore: connection_reg_r3 {}

explore: formats {
  join: shares {
    type: left_outer
    sql_on: ${formats.share_id} = ${shares.id} ;;
    relationship: many_to_one
  }
}

explore: ga_registrations {}

explore: ga_transactions {}

explore: logins {
  join: users {
    type: left_outer
    sql_on: ${logins.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: user_plans {
    type: left_outer
    sql_on: ${users.user_plan_id} = ${user_plans.id} ;;
    relationship: many_to_one
  }

  join: plans {
    type: left_outer
    sql_on: ${user_plans.plan_id} = ${plans.id} ;;
    relationship: many_to_one
  }
}

explore: orders {
  join: promo_codes {
    type: left_outer
    sql_on: ${orders.promo_code_id} = ${promo_codes.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: recurring_payments {
    type: left_outer
    sql_on: ${orders.recurring_payment_id} = ${recurring_payments.id} ;;
    relationship: many_to_one
  }

  join: rates {
    type: left_outer
    sql_on: ${orders.rate_id} = ${rates.id} ;;
    relationship: many_to_one
  }

  join: user_plans {
    type: left_outer
    sql_on: ${users.user_plan_id} = ${user_plans.id} ;;
    relationship: many_to_one
  }

  join: plans {
    type: left_outer
    sql_on: ${user_plans.plan_id} = ${plans.id} ;;
    relationship: many_to_one
  }
}

explore: partial_refunds {
  join: orders {
    type: left_outer
    sql_on: ${partial_refunds.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: promo_codes {
    type: left_outer
    sql_on: ${orders.promo_code_id} = ${promo_codes.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: recurring_payments {
    type: left_outer
    sql_on: ${orders.recurring_payment_id} = ${recurring_payments.id} ;;
    relationship: many_to_one
  }

  join: rates {
    type: left_outer
    sql_on: ${orders.rate_id} = ${rates.id} ;;
    relationship: many_to_one
  }

  join: user_plans {
    type: left_outer
    sql_on: ${users.user_plan_id} = ${user_plans.id} ;;
    relationship: many_to_one
  }

  join: plans {
    type: left_outer
    sql_on: ${user_plans.plan_id} = ${plans.id} ;;
    relationship: many_to_one
  }
}

explore: plans {}

explore: projects {}

explore: promotions {}

explore: promo_codes {}

explore: rates {
  join: plans {
    type: left_outer
    sql_on: ${rates.plan_id} = ${plans.id} ;;
    relationship: many_to_one
  }
}

explore: recurring_payments {
  join: users {
    type: left_outer
    sql_on: ${recurring_payments.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: rates {
    type: left_outer
    sql_on: ${recurring_payments.rate_id} = ${rates.id} ;;
    relationship: many_to_one
  }

  join: user_plans {
    type: left_outer
    sql_on: ${users.user_plan_id} = ${user_plans.id} ;;
    relationship: many_to_one
  }

  join: plans {
    type: left_outer
    sql_on: ${user_plans.plan_id} = ${plans.id} ;;
    relationship: many_to_one
  }
}

explore: renders {
  join: projects {
    type: left_outer
    sql_on: ${renders.project_id} = ${projects.root_project_id} ;;
    relationship: many_to_one
  }
}

explore: shares {}

explore: share_batches {
  join: users {
    type: left_outer
    sql_on: ${share_batches.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: shares {
    type: left_outer
    sql_on: ${share_batches.share_id} = ${shares.id} ;;
    relationship: many_to_one
  }

  join: user_plans {
    type: left_outer
    sql_on: ${users.user_plan_id} = ${user_plans.id} ;;
    relationship: many_to_one
  }

  join: plans {
    type: left_outer
    sql_on: ${user_plans.plan_id} = ${plans.id} ;;
    relationship: many_to_one
  }
}

explore: share_stats {}

explore: subscriptions {
  join: subscription_grants {
    type: left_outer
    sql_on: ${subscriptions.subscription_grant_id} = ${subscription_grants.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${subscriptions.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: orders {
    type: left_outer
    sql_on: ${subscriptions.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: user_plans {
    type: left_outer
    sql_on: ${subscriptions.user_plan_id} = ${user_plans.id} ;;
    relationship: many_to_one
  }

  join: plans {
    type: left_outer
    sql_on: ${subscriptions.plan_id} = ${plans.id} ;;
    relationship: many_to_one
  }

  join: promotions {
    type: left_outer
    sql_on: ${subscriptions.promotion_id} = ${promotions.id} ;;
    relationship: many_to_one
  }

  join: promo_codes {
    type: left_outer
    sql_on: ${orders.promo_code_id} = ${promo_codes.id} ;;
    relationship: many_to_one
  }

  join: recurring_payments {
    type: left_outer
    sql_on: ${orders.recurring_payment_id} = ${recurring_payments.id} ;;
    relationship: many_to_one
  }

  join: rates {
    type: left_outer
    sql_on: ${orders.rate_id} = ${rates.id} ;;
    relationship: many_to_one
  }
}

explore: subscription_grants {
  join: users {
    type: left_outer
    sql_on: ${subscription_grants.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: plans {
    type: left_outer
    sql_on: ${subscription_grants.plan_id} = ${plans.id} ;;
    relationship: many_to_one
  }

  join: user_plans {
    type: left_outer
    sql_on: ${subscription_grants.user_plan_id} = ${user_plans.id} ;;
    relationship: many_to_one
  }

  join: promotions {
    type: left_outer
    sql_on: ${subscription_grants.promotion_id} = ${promotions.id} ;;
    relationship: many_to_one
  }

  join: orders {
    type: left_outer
    sql_on: ${subscription_grants.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: promo_codes {
    type: left_outer
    sql_on: ${orders.promo_code_id} = ${promo_codes.id} ;;
    relationship: many_to_one
  }

  join: recurring_payments {
    type: left_outer
    sql_on: ${orders.recurring_payment_id} = ${recurring_payments.id} ;;
    relationship: many_to_one
  }

  join: rates {
    type: left_outer
    sql_on: ${orders.rate_id} = ${rates.id} ;;
    relationship: many_to_one
  }
}

explore: users {
  join: user_plans {
    type: left_outer
    sql_on: ${users.user_plan_id} = ${user_plans.id} ;;
    relationship: many_to_one
  }


  join: plans {
    type: left_outer
    sql_on: ${user_plans.plan_id} = ${plans.id} ;;
    relationship: many_to_one
  }
}

explore: user_demographics {
  join: users {
    type: left_outer
    sql_on: ${user_demographics.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: user_plans {
    type: left_outer
    sql_on: ${users.user_plan_id} = ${user_plans.id} ;;
    relationship: many_to_one
  }

  join: plans {
    type: left_outer
    sql_on: ${user_plans.plan_id} = ${plans.id} ;;
    relationship: many_to_one
  }
}

explore: user_plans {
  join: users {
    type: left_outer
    sql_on: ${user_plans.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: plans {
    type: left_outer
    sql_on: ${user_plans.plan_id} = ${plans.id} ;;
    relationship: many_to_one
  }

}

explore: utm_events {
  join: users {
    type: left_outer
    sql_on: ${utm_events.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: user_plans {
    type: left_outer
    sql_on: ${users.user_plan_id} = ${user_plans.id} ;;
    relationship: many_to_one
  }

  join: plans {
    type: left_outer
    sql_on: ${user_plans.plan_id} = ${plans.id} ;;
    relationship: many_to_one
  }
}
