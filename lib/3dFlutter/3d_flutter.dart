// import 'dart:math' as math;
// import 'dart:ui';

// import 'package:flutter/material.dart' hide Material;
// import 'package:flutter_cube/flutter_cube.dart';

// class NextBlocksScene extends StatefulWidget {
//   NextBlocksScene({Key? key}) : super(key: key);

//   @override
//   State<NextBlocksScene> createState() => _NextBlocksSceneState();
// }

// class _NextBlocksSceneState extends State<NextBlocksScene>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _animationController;
//   Scene? _scene;
//   Object? _group;

//   @override
//   void initState() {
//     super.initState();
//     _animationController = AnimationController(
//       vsync: this,
//       duration: const Duration(seconds: 20),
//     )..repeat();
//   }

//   @override
//   void dispose() {
//     _animationController.dispose();
//     super.dispose();
//   }

//   void _onSceneCreated(Scene scene) {
//     _scene = scene;
//     scene.camera.position.z = 15;
//     scene.camera.target.y = 0;
//     scene.light.position.setFrom(Vector3(5.0, 5.0, 5.0));

//     scene.world.add(Object(name: 'anchor'));

//     _group = Object(
//       position: Vector3(0, 0, 0),
//       rotation: Vector3(0, math.pi / 1.5, 0),
//     );

//     // Add the NEXT letters
//     _addLetterN(_group!, Vector3(-3.75, 0, 0));
//     _addLetterE(_group!, Vector3(-1.25, 0, 0));
//     _addLetterX(_group!, Vector3(1.25, 0, 0));
//     _addLetterT(_group!, Vector3(3.75, 0, 0));

//     scene.world.add(_group!);
//   }

//   void _addLetterN(Object parent, Vector3 position) {
//     final letterShape = [
//       [1, 0, 0, 0, 1],
//       [1, 1, 0, 0, 1],
//       [1, 0, 1, 0, 1],
//       [1, 0, 0, 1, 1],
//       [1, 0, 0, 0, 1],
//     ];

//     _addLetterBlocks(parent, letterShape, position, 'N');
//   }

//   void _addLetterE(Object parent, Vector3 position) {
//     final letterShape = [
//       [1, 1, 1],
//       [1, 0, 0],
//       [1, 1, 0],
//       [1, 0, 0],
//       [1, 1, 1],
//     ];

//     _addLetterBlocks(parent, letterShape, position, 'E');
//   }

//   void _addLetterX(Object parent, Vector3 position) {
//     final letterShape = [
//       [1, 0, 0, 0, 1],
//       [0, 1, 0, 1, 0],
//       [0, 0, 1, 0, 0],
//       [0, 1, 0, 1, 0],
//       [1, 0, 0, 0, 1],
//     ];

//     _addLetterBlocks(parent, letterShape, position, 'X');
//   }

//   void _addLetterT(Object parent, Vector3 position) {
//     final letterShape = [
//       [1, 1, 1],
//       [0, 1, 0],
//       [0, 1, 0],
//       [0, 1, 0],
//       [0, 1, 0],
//     ];

//     _addLetterBlocks(parent, letterShape, position, 'T');
//   }

//   void _addLetterBlocks(Object parent, List<List<int>> letterShape,
//       Vector3 position, String letter) {
//     final letterGroup = Object(position: position);

//     for (int i = 0; i < letterShape.length; i++) {
//       for (int j = 0; j < letterShape[i].length; j++) {
//         if (letterShape[i][j] == 1) {
//           double xOffset = j * 0.5;

//           // Adjust offsets based on letter
//           if (letter == 'T') {
//             xOffset -= 1;
//           } else if (letter == 'E') {
//             xOffset -= 0.5;
//           } else if (letter == 'X' || letter == 'N') {
//             xOffset -= 1;
//           } else {
//             xOffset -= 0.75;
//           }

//           // Special adjustments for N
//           if (letter == 'N') {
//             if (j == 0)
//               xOffset = -0.5;
//             else if (j == 1)
//               xOffset = 0;
//             else if (j == 2)
//               xOffset = 0.25;
//             else if (j == 3)
//               xOffset = 0.5;
//             else if (j == 4) xOffset = 1;
//           }

//           // Special adjustments for X
//           if (letter == 'X') {
//             if (j == 0)
//               xOffset = -1;
//             else if (j == 1)
//               xOffset = -0.75;
//             else if (j == 2)
//               xOffset = -0.25;
//             else if (j == 3)
//               xOffset = 0.25;
//             else if (j == 4) xOffset = 0.5;
//           }

//           _addBoxWithEdges(
//             letterGroup,
//             Vector3(xOffset, (4 - i) * 0.5 - 1, 0),
//           );
//         }
//       }
//     }

//     parent.add(letterGroup);
//   }

//   void _addBoxWithEdges(Object parent, Vector3 position) {
//     final boxGroup = Object(position: position);

//     // Create the main cube using a built-in cube object
//     final cube = createCube(
//       scale: Vector3(0.5, 0.5, 0.5),
//       color: Color.fromRGBO(0, 112, 243, 230), // #0070f3 with opacity
//     );

//     // Create edges using a built-in cube object with wireframe
//     final edges = createCube(
//       scale: Vector3(0.5, 0.5, 0.5),
//       color: Color.fromRGBO(33, 77, 189, 255), // #214dbd
//       wireframe: true,
//     );

//     boxGroup.add(cube);
//     boxGroup.add(edges);
//     parent.add(boxGroup);
//   }

//   // Helper method to create a cube with the given properties
//   Object createCube({
//     required Vector3 scale,
//     required Color color,
//     bool wireframe = false,
//   }) {
//     final cube = Object(
//       scale: scale,
//       lighting: !wireframe,
//     );

//     // Create material
//     final material = Material();
//     material.diffuse.setValues(
//       color.red / 255,
//       color.green / 255,
//       color.blue / 255,
//     );
//     material.diffuse.r = color.alpha / 255;

//     if (!wireframe) {
//       material.ambient.setValues(0.1, 0.1, 0.1);
//       material.specular.setValues(1.0, 1.0, 1.0);
//       material.shininess = 100.0;
//     }

//     // Create a cube mesh using the built-in cube model
//     final model = Model(
//       fileName: 'assets/cube/cube.obj',
//       isAsset: true,
//     );

//     // Apply material to all meshes in the model
//     for (final mesh in model.meshes) {
//       mesh.material = material;
//     }

//     cube.updateTransform();
//     cube.mesh = model.meshes[0];

//     return cube;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedBuilder(
//       animation: _animationController,
//       builder: (context, child) {
//         if (_scene != null && _group != null) {
//           // Rotate the group
//           _group!.rotation.y = _animationController.value * math.pi * 2;
//         }

//         return Cube(
//           onSceneCreated: _onSceneCreated,
//           interactive: true,
//         );
//       },
//     );
//   }

//   Model({required String fileName, required bool isAsset}) {}
// }
