
{
  "mod_type": "startup_logic",
  "description": "Boot enhancement mod that introduces persona-aware state and instruction loading.",
  "actions": {
    "on_boot": {
      "check_personas": "If /persona directory exists and contains folders, list persona names and prompt selection.",
      "fallback": "If no persona is selected or none exist, load default.inst and default.st8 from root.",
      "always_available": ["default"],
      "load_selected": "If a persona is selected, load persona_name/inst and persona_name/st8 instead."
    },
    "persona_format": {
      "folder_structure": "/persona/{name}/",
      "required_files": ["{name}.inst", "{name}.st8"],
      "description": "Each persona folder must include a matching .inst and .st8 file."
    },
    "menu_update": {
      "append_persona_option": true,
      "label": "Switch Persona"
    }
  }
}