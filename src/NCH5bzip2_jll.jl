# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule NCH5bzip2_jll
using Base
using Base: UUID
using MPIPreferences
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("NCH5bzip2")
JLLWrappers.@generate_main_file("NCH5bzip2", Base.UUID("75eff3b7-d341-5fda-9e47-1bcb23a330fe"))
end  # module NCH5bzip2_jll
