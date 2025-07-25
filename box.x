xof 0303txt 0032
template Frame {
 <3d82ab46-62da-11cf-ab39-0020af71e433>
 [...]
}

template Matrix4x4 {
 <f6f23f45-7686-11cf-8f52-0040333594a3>
 array FLOAT matrix[16];
}

template FrameTransformMatrix {
 <f6f23f41-7686-11cf-8f52-0040333594a3>
 Matrix4x4 frameMatrix;
}

template Vector {
 <3d82ab5e-62da-11cf-ab39-0020af71e433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template MeshFace {
 <3d82ab5f-62da-11cf-ab39-0020af71e433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template Mesh {
 <3d82ab44-62da-11cf-ab39-0020af71e433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

template MeshNormals {
 <f6f23f43-7686-11cf-8f52-0040333594a3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template ColorRGBA {
 <35ff44e0-6c7c-11cf-8f52-0040333594a3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <d3e16e81-7835-11cf-8f52-0040333594a3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template Material {
 <3d82ab4d-62da-11cf-ab39-0020af71e433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshMaterialList {
 <f6f23f42-7686-11cf-8f52-0040333594a3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material <3d82ab4d-62da-11cf-ab39-0020af71e433>]
}


Frame Scene_Root {
 

 Frame cube {
  

  FrameTransformMatrix {
   1.000000,0.000000,0.000000,0.000000,0.000000,1.000000,0.000000,0.000000,0.000000,0.000000,1.000000,0.000000,0.000000,0.000000,0.000000,1.000000;;
  }

  Mesh cube_obj {
   8;
   -4.000000;-4.000000;-4.000000;,
   4.000000;-4.000000;-4.000000;,
   -4.915608;5.251026;2.103978;,
   4.000000;4.000000;-4.000000;,
   -4.000000;-4.000000;4.000000;,
   4.000000;-4.000000;4.000000;,
   -4.915608;-2.103978;5.251026;,
   4.000000;4.000000;4.000000;;
   6;
   4;0,2,3,1;,
   4;0,1,5,4;,
   4;0,4,6,2;,
   4;1,3,7,5;,
   4;2,6,7,3;,
   4;4,5,7,6;;

   MeshNormals {
    24;
    -0.303480;0.303480;-0.903216;,
    -0.303480;0.303480;-0.903216;,
    -0.303480;0.303480;-0.903216;,
    -0.303480;0.303480;-0.903216;,
    0.000000;-1.000000;0.000000;,
    0.000000;-1.000000;0.000000;,
    0.000000;-1.000000;0.000000;,
    0.000000;-1.000000;0.000000;,
    -0.990730;-0.113390;-0.074817;,
    -0.990730;-0.113390;-0.074817;,
    -0.990730;-0.113390;-0.074817;,
    -0.990730;-0.113390;-0.074817;,
    1.000000;0.000000;0.000000;,
    1.000000;0.000000;0.000000;,
    1.000000;0.000000;0.000000;,
    1.000000;0.000000;0.000000;,
    0.000000;0.834680;0.550735;,
    0.000000;0.834680;0.550735;,
    0.000000;0.834680;0.550735;,
    0.000000;0.834680;0.550735;,
    0.114192;-0.114192;0.986874;,
    0.114192;-0.114192;0.986874;,
    0.114192;-0.114192;0.986874;,
    0.114192;-0.114192;0.986874;;
    6;
    4;0,1,2,3;,
    4;4,5,6,7;,
    4;8,9,10,11;,
    4;12,13,14,15;,
    4;16,17,18,19;,
    4;20,21,22,23;;
   }

   MeshMaterialList {
    1;
    6;
    0,
    0,
    0,
    0,
    0,
    0;

    Material DefaultLib_Scene_Material {
     0.700000;0.700000;0.700000;1.000000;;
     50.000000;
     1.000000;1.000000;1.000000;;
     0.000000;0.000000;0.000000;;
    }
   }
  }
 }
}