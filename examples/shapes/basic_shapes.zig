const rl = @import("raylib");

pub fn main() anyerror!void {
    // Initialization
    //--------------------------------------------------------------------------------------
    const screenWidth = 800;
    const screenHeight = 450;

    rl.initWindow(screenWidth, screenHeight, "raylib-zig [shapes] example - basic shapes drawing");
    defer rl.closeWindow(); // Close window and OpenGL context

    var rotation: f32 = 0.0;

    rl.setTargetFPS(60); // Set our game to run at 60 frames-per-second
    //--------------------------------------------------------------------------------------

    // Main game loop
    while (!rl.windowShouldClose()) { // Detect window close button or ESC key
        // Update
        //----------------------------------------------------------------------------------
        rotation += 0.2;
        //----------------------------------------------------------------------------------

        // Draw
        //----------------------------------------------------------------------------------
        rl.beginDrawing();
        defer rl.endDrawing();

        rl.clearBackground(rl.Color.ray_white);

        rl.drawText("some basic shapes available on raylib", 20, 20, 20, rl.Color.dark_gray);

        // Circle shapes and lines
        rl.drawCircle(screenWidth / 5, 120, 35, rl.Color.dark_blue);
        rl.drawCircleGradient(screenWidth / 5, 220, 60, rl.Color.green, rl.Color.sky_blue);
        rl.drawCircleLines(screenWidth / 5, 340, 80, rl.Color.dark_blue);

        // Rectangle shapes and lines
        rl.drawRectangle(screenWidth / 4 * 2 - 60, 100, 120, 60, rl.Color.red);
        rl.drawRectangleGradientH(screenWidth / 4 * 2 - 90, 170, 180, 130, rl.Color.maroon, rl.Color.gold);
        rl.drawRectangleLines(screenWidth / 4 * 2 - 40, 320, 80, 60, rl.Color.orange); // NOTE: Uses QUADS internally, not lines

        // Triangle shapes and lines
        rl.drawTriangle((rl.Vector2){ .x = (screenWidth / 4.0 * 3.0), .y = 80.0 }, (rl.Vector2){ .x = (screenWidth / 4.0 * 3.0 - 60.0), .y = 150.0 }, (rl.Vector2){ .x = (screenWidth / 4.0 * 3.0 + 60.0), .y = 150.0 }, rl.Color.violet);

        rl.drawTriangleLines((rl.Vector2){ .x = (screenWidth / 4.0 * 3.0), .y = 160.0 }, (rl.Vector2){ .x = (screenWidth / 4.0 * 3.0 - 20.0), .y = 230.0 }, (rl.Vector2){ .x = (screenWidth / 4.0 * 3.0 + 20.0), .y = 230.0 }, rl.Color.dark_blue);

        // Polygon shapes and lines
        rl.drawPoly((rl.Vector2){ .x = (screenWidth / 4.0 * 3), .y = 330 }, 6, 80, rotation, rl.Color.brown);
        rl.drawPolyLines((rl.Vector2){ .x = (screenWidth / 4.0 * 3), .y = 330 }, 6, 90, rotation, rl.Color.brown);
        rl.drawPolyLinesEx((rl.Vector2){ .x = (screenWidth / 4.0 * 3), .y = 330 }, 6, 85, rotation, 6, rl.Color.beige);

        // NOTE: We draw all LINES based shapes together to optimize internal drawing,
        // this way, all LINES are rendered in a single draw pass
        rl.drawLine(18, 42, screenWidth - 18, 42, rl.Color.black);
        //----------------------------------------------------------------------------------
    }
}
