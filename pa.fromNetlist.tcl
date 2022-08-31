
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name jicunqi -dir "D:/szdl/jicunqi/planAhead_run_3" -part xc7a100tfgg484-2L
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/szdl/jicunqi/jicunqi.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/szdl/jicunqi} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "jicunqi.ucf" [current_fileset -constrset]
add_files [list {jicunqi.ucf}] -fileset [get_property constrset [current_run]]
link_design
