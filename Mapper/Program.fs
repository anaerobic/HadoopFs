open HadoopFs.Core
open HadoopFs.IO
open HadoopFs.Samples

[<EntryPoint>]
let mainMap argv = 
    doMap <| ManyOutputs WordCount.Mapper
    0