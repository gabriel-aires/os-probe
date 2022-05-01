[:div, {class: "gauge-memory"},
  [:h4, {class: "gra-subheading"}, "Memory Usage"],
  [:div, {class: "gra-table-wrapper"},
    [:table, {class: "gra-table"},
      [:tr,
        [:th, "Total RAM #{memory.ram_size_mb.round}Mb"],
        [:td, "Used RAM #{memory.ram_used_mb.round}Mb"]],
      [:tr,
        [:th, "Total SWAP #{memory.swp_size_mb.round}Mb"],
        [:td, "Used SWAP #{memory.swp_used_mb.round}Mb"]]]],
  [show_arc(memory.ram_used_mb * 100.0 / memory.ram_size_mb, "medium", "green")],
  [show_arc(memory.swp_used_mb * 100.0 / memory.swp_size_mb, "medium", "red")]]
