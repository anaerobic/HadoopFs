open HadoopFs.Core
open HadoopFs.IO
open HadoopFs.Samples

[<EntryPoint>]
let mainReduce argv = 
    doReduce <| SingleOutput WordCount.Reducer
    0
