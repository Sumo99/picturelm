-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Gallery.Object.ImageNode exposing (datetime, description, exif, gallery, id, imageFile, imageUrl, latitude, longitude, title)

import Gallery.InputObject
import Gallery.Interface
import Gallery.Object
import Gallery.Scalar
import Gallery.ScalarCodecs
import Gallery.Union
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| The ID of the object.
-}
id : SelectionSet Gallery.ScalarCodecs.Id Gallery.Object.ImageNode
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (Gallery.ScalarCodecs.codecs |> Gallery.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| -}
title : SelectionSet String Gallery.Object.ImageNode
title =
    Object.selectionForField "String" "title" [] Decode.string


{-| -}
description : SelectionSet (Maybe String) Gallery.Object.ImageNode
description =
    Object.selectionForField "(Maybe String)" "description" [] (Decode.string |> Decode.nullable)


{-| -}
datetime : SelectionSet Gallery.ScalarCodecs.DateTime Gallery.Object.ImageNode
datetime =
    Object.selectionForField "ScalarCodecs.DateTime" "datetime" [] (Gallery.ScalarCodecs.codecs |> Gallery.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| -}
imageFile : SelectionSet String Gallery.Object.ImageNode
imageFile =
    Object.selectionForField "String" "imageFile" [] Decode.string


{-| -}
latitude : SelectionSet (Maybe Float) Gallery.Object.ImageNode
latitude =
    Object.selectionForField "(Maybe Float)" "latitude" [] (Decode.float |> Decode.nullable)


{-| -}
longitude : SelectionSet (Maybe Float) Gallery.Object.ImageNode
longitude =
    Object.selectionForField "(Maybe Float)" "longitude" [] (Decode.float |> Decode.nullable)


{-| -}
gallery : SelectionSet decodesTo Gallery.Object.GalleryNode -> SelectionSet (Maybe decodesTo) Gallery.Object.ImageNode
gallery object_ =
    Object.selectionForCompositeField "gallery" [] object_ (identity >> Decode.nullable)


{-| -}
exif : SelectionSet (Maybe Gallery.ScalarCodecs.JSONString) Gallery.Object.ImageNode
exif =
    Object.selectionForField "(Maybe ScalarCodecs.JSONString)" "exif" [] (Gallery.ScalarCodecs.codecs |> Gallery.Scalar.unwrapCodecs |> .codecJSONString |> .decoder |> Decode.nullable)


imageUrl : SelectionSet String Gallery.Object.ImageNode
imageUrl =
    Object.selectionForField "String" "imageUrl" [] Decode.string
