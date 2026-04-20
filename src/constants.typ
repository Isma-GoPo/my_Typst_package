// ---DOCUMENT CONSTANTS---
#let default_config = yaml("default_config.yaml")
  #default_config.insert("date", datetime.today())

#let date_display(date) = date.display(("[month repr:long] [day], [year]")) 

#let config(config_dict: none) = {
  if config_dict == none {
    return default_config
  }
  let new_config = default_config
  for (key, value) in config_dict {
    new_config.insert(key, value)
  }
  return new_config
}