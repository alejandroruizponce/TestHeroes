//
//  Definiciones.swift
//  Movelia
//
//  Created by Miguel Gutierrez on 18/02/2020.
//

import Foundation

typealias SelectedCallback<T> = (_ selected:T)->()
typealias SelectedCallbackIndex<T> = (_ selected:T,_ index:Int)->()
typealias ErrorListener = (Error) ->Void
typealias ResultListener = (Bool) ->Void
typealias ResultErrorListener = (Bool,Error?) ->Void
typealias ResultListenerGeneric<T> = (T?) ->Void
typealias CompletionListResult<T> = ([T]) ->Void
typealias CompletionFindResult<T> = (T?) ->Void
typealias ListListener<T> = ([T], Error?) -> Void
