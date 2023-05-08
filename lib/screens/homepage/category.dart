import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'workout_details.dart';

List armsWorkoutList = [
  {'image': 'assets/images/arm1.jpg', 'name': 'Lean Arms', 'description': '14 minutes - Beginner' ,
    ////////////////////////////////////////////
    'gif1' : 'assets/gif/JumpingJacks.gif','gif2' : 'assets/gif/Armraises_1.gif','gif3' : 'assets/gif/SideArmRaise_1.gif','gif4' : 'assets/gif/TricepsDips_1.gif','gif5' : 'assets/gif/ArmCirclesClockwise_1.gif','gif6' : 'assets/gif/ArmcirclesCounterClockwise_1.gif','gif7' : 'assets/gif/DiamondPushups_1.gif','gif8' : 'assets/gif/ChestPressPulse_1.gif','gif9' : 'assets/gif/DiagonalPlank_1.gif','gif10' : 'assets/gif/Punches_1.gif',
    /////////////////////////////////////////
    'exercise1' : 'jumping jacks' , 'exercise2' : 'Arm Raise' , 'exercise3' : 'Side arm raise' , 'exercise4' : 'Triceps dips' , 'exercise5' : 'Arm circles clockwise', 'exercise6' : 'Arm circles counterclockwise', 'exercise7' : 'Diamond push-ups' , 'exercise8' : 'Chest press pulse' , 'exercise9' : 'Diagonal plank' , 'exercise10' : 'Punches',
    //////////////////////////////////////////
    'instructions1' : ' Start with your feet together and your arms by your sides, then jump up with your feet apart and your hands overhead. Return to the start position then do the next rep. This exercise provides a full-body workout and works all your large muscle groups.' ,
    'instructions2' : 'stand on the floor with your arms extended straight forward at shoulder height. Raise your arms above your head.' ,
    'instructions3' : 'stand with your feet shoulder width apart. Raise your arms to the sides at shoulder height, then put them down.' ,
    'instructions4' : ' for the start position, sit on the chair. Then move your hip off the chair with your hands holding the edge of the chair. Slowly bend and stretch your arms to make your body go up and down. This is a great exercise for the triceps. ' ,
    'instructions5' : ' stand on the floor with your arms extended straight out to the sides at shoulder height. Move your arms clockwise in circles.' ,
    'instructions6' : ' stand on the floor with your arms extended straight out to the sides at shoulder height. Move your arms counterclockwise in circles.' ,
    'instructions7' : 'start in the push-up position. Make a diamond shape with your forefingers and thumbs together under your chest. Then push your body up and down.' ,
    'instructions8' : 'hold your forearms together at a shoulder height and bend your elbows with your hands together to make an “L” shape. The life up and down.' ,
    'instructions9' : 'start in the straight arm plank position. Lift your right arm and left leg until they are parallel with the ground. Repeat it.' ,
    'instructions10' : 'stand with one of your legs forward and your knees bent slightly. Bend your elbows and clench your fists in front of your face. Extend one arm forward then switch.'


  } ,
  ///////////////////////////////////////////

  {'image': 'assets/images/arm2.jpg', 'name': 'Toned Arms', 'description': '16 minutes - Beginner',
    ////////////////////////////////////////////
    'gif1' : 'assets/gif/JumpingJacks.gif','gif2' : 'assets/gif/Inchworms_1.gif','gif3' : 'assets/gif/WallPushups_1.gif','gif4' : 'assets/gif/TricepsStretchLeft_1.gif','gif5' : 'assets/gif/TricepsStretchRight_1.gif','gif6' : 'assets/gif/StandingBicepsStretchLeft_1.gif','gif7' : 'assets/gif/StandingBicepsStretchright_1.gif','gif8' : 'assets/gif/ModifiedPushupLowHold_1.gif','gif9' : 'assets/gif/DiamondPushups_1.gif','gif10' : 'assets/gif/SkippingWithoutRope_1.gif',
    /////////////////////////////////////////
    'exercise1' : 'jumping jacks' , 'exercise2' : 'Inchworms' , 'exercise3' : 'Wall push-ups' , 'exercise4' : 'Triceps stretch left' , 'exercise5' : 'Triceps stretch right', 'exercise6' : 'Standing biceps stretch left', 'exercise7' : 'Standing biceps stretch right' , 'exercise8' : ' Modified push-up low hold' , 'exercise9' : 'diamond pushups' , 'exercise10' : 'skipping without rope',
    //////////////////////////////////////////
    'instructions1' : ' Start with your feet together and your arms by your sides, then jump up with your feet apart and your hands overhead. Return to the start position then do the next rep. This exercise provides a full-body workout and works all your large muscle groups.' ,
    'instructions2' : 'start with your feet shoulder width apart. Bend your body and walk your hands in front of you as far as you can, then walk your hands back.' ,
    'instructions3' : 'stand in front of a wall one big step away from it. Then put your hands out to press your upper body towards the wall.' ,
    'instructions4' : 'put your left hand on your back, use your right hand to grab your left elbow and gently pull it.' ,
    'instructions5' : 'put your right hand on your back, use your left hand to grab your right elbow and gently pull it.' ,
    'instructions6' : 'standing with your left arm close to the wall. Extend your left arm and put your left hand on the wall then turn your body.' ,
    'instructions7' : 'standing with your right arm close to the wall. Extend your right arm and put your right hand on the wall then turn your body.' ,
    'instructions8' : 'start in the standard push-up position but with your feet shoulder-width apart and knees on the ground. Hold your position.' ,
    'instructions9' : 'start in the push-up position. Make a diamond shape with your forefingers and thumbs together under your chest. Then push your body up and down. ' ,
    'instructions10' : 'place your arms at your sides and pretend to hold a skipping rope handle in each hand.'

  } ,


  /////////////////////////////////////

  {'image': 'assets/images/arm3.jpg', 'name': 'Killer arm', 'description': '15 minutes - Medium',
    ////////////////////////////////////////////
    'gif1' : 'assets/gif/JumpingJacks.gif','gif2' : 'assets/gif/FloorTricepsDips_1.gif','gif3' : 'assets/gif/MilitaryPushUps_1.gif','gif4' : 'assets/gif/AlternatingHooks_1.gif','gif5' : 'assets/gif/SkippingWithoutRope_1.gif','gif6' : 'assets/gif/ArmcurlsCrunchLeft_1.gif','gif7' : 'assets/gif/ArmcurlsCrunchRight_1.gif','gif8' : 'assets/gif/ShoulderGators_1.gif','gif9' : 'assets/gif/DoorwayCurlesLeft_1.gif','gif10' : 'assets/gif/DoorwayCurlsRight_1.gif',
    /////////////////////////////////////////
    'exercise1' : 'jumping jacks' , 'exercise2' : 'Floor triceps dips' , 'exercise3' : 'Military push-ups' , 'exercise4' : 'Alternating Hooks' , 'exercise5' : 'Skipping without rope', 'exercise6' : 'Arm curls crunch left', 'exercise7' : 'Arm curls crunch right' , 'exercise8' : 'Shoulder gators' , 'exercise9' : 'Doorway curls left' , 'exercise10' : 'Doorway curls right',
    //////////////////////////////////////////
    'instructions1' : ' Start with your feet together and your arms by your sides, then jump up with your feet apart and your hands overhead. Return to the start position then do the next rep. This exercise provides a full-body workout and works all your large muscle groups.' ,
    'instructions2' : 'sit on the floor with your knees bent and feet flat on the floor. Put your hands beneath your shoulders with your fingers pointing toward your hips. Lift your hips off the floor' ,
    'instructions3' : 'start in a push-up position with your hands directly under your shoulders. Bend your elbows and lower your body and then push your body back to the starting position and repeat. ' ,
    'instructions4' : 'stand with your feet shoulder width apart, and place your dominant foot forward. Raise your right arm to shoulder height. Rotate your shoulders and hips and punch towards the left.' ,
    'instructions5' : 'place your arms at your sides and pretend to hold a skipping rope handle in each hand.' ,
    'instructions6' : 'lie on your left side with your knees bent and lifted. Grasp your left thigh with your left hand and put your right hand behind your head. Then raise your upper body.' ,
    'instructions7' : 'lie on your right side with your knees bent and lifted. Grasp your right thigh with your right hand and put your left hand behind your head. Then raise your upper body.' ,
    'instructions8' : 'stand upright with your hands beside your ears and elbows facing each side. Rotate your elbows until both are facing the front.' ,
    'instructions9' : 'stand upright with your hands beside your ears and elbows facing each side. Rotate your elbows until both are facing the front.' ,
    'instructions10' : 'stand in a doorway. Grasp the doorframe using your right hand, and put your feet close to the bottom of the door. Extend your right arm and lean back, then pull at the doorframe and come back.'

  } ,

  //////////////////////

  {'image': 'assets/images/arm4.jpg', 'name': 'Strong Lean Arms', 'description': '16 minutes - Medium',
    ////////////////////////////////////////////
    'gif1' : 'assets/gif/JumpingJacks.gif','gif2' : 'assets/gif/Hyperextension_1.gif','gif3' : 'assets/gif/Pikepushup_1.gif','gif4' : 'assets/gif/ReversePushup_2.gif','gif5' : 'assets/gif/SideLyingLegLiftLeft_1.gif','gif6' : 'assets/gif/SideLyingLegLiftRight_1.gif','gif7' : 'assets/gif/SupinePushup_1.gif','gif8' : 'assets/gif/FloorYRaises_1.gif','gif9' : 'assets/gif/ReverseSnowAngels_1.gif','gif10' : 'assets/gif/CatCowPose_1.gif',
    /////////////////////////////////////////
    'exercise1' : 'jumping jacks' , 'exercise2' : 'Hyperextension' , 'exercise3' : 'Pike pushups' , 'exercise4' : 'Reverse pushups' , 'exercise5' : 'Side lying floor stretch left', 'exercise6' : 'Side lying floor stretch right', 'exercise7' : 'Supine pushup' , 'exercise8' : 'Floor Y raises' , 'exercise9' : 'Reverse snow angels' , 'exercise10' : 'Cat cow pose',
    //////////////////////////////////////////
    'instructions1' : ' Start with your feet together and your arms by your sides, then jump up with your feet apart and your hands overhead. Return to the start position then do the next rep. This exercise provides a full-body workout and works all your large muscle groups.' ,
    'instructions2' : 'lie down on your stomach with your toes touching the floor, and your chin on your hand. Raise your chest up as high as possible on the floor. Hold the position.' ,
    'instructions3' : 'start with your hands and feet on the floor. Put your hands shoulder width apart. Bend your body, and lift your hips up in an upside down ‘v’ shape. Bend your elbows and bring your head close to the floor. ' ,
    'instructions4' : 'start in the regular pushup position. Lower your body down then bend your knees and move your hips backward.' ,
    'instructions5' : 'lie on your right side with your right knee slightly bent in front of you and your left leg stretched behind your leg. Straighten your left arm over your head and pull on your left wrist.' ,
    'instructions6' : 'lie on your left side with your left knee slightly bent in front of you and your right leg stretched behind your leg. Straighten your right arm over your head and pull on your right wrist.' ,
    'instructions7' : 'lie on your back with your feet flat on the floor and your arms bent on two sides. Push your chest up as far as you can, and then slowly go back to the start position. Repeat.' ,
    'instructions8' : 'lie face down on the floor with your arms fully extended and your thumbs pointing up, raise your arms off the ground then slowly go back to the start position.' ,
    'instructions9' : 'lie on your stomach with your arms at your sides. Lift your arms up and extend them over your head to touch your thumbs.' ,
    'instructions10' : 'start on all fours with your knees under your butt and your hands directly under your shoulder, as you exhale, curve your back upward and let your head come down. Repeat the exercise. '

  } ,
  //////////////////////////////////////

  {'image': 'assets/images/arm5.jpg', 'name': 'Burning Arms', 'description': '21 minutes - Advanced',
    ////////////////////////////////////////////
    'gif1' : 'assets/gif/JumpingJacks.gif','gif2' : 'assets/gif/Childpose_1.gif','gif3' : 'assets/gif/SupinePushup_1.gif','gif4' : 'assets/gif/DiagonalPlank_1.gif','gif5' : 'assets/gif/TricepsStretchLeft_1.gif','gif6' : 'assets/gif/TricepsStretchRight_1.gif','gif7' : 'assets/gif/ArmcurlsCrunchLeft_1.gif','gif8' : 'assets/gif/ArmcurlsCrunchRight_1.gif','gif9' : 'assets/gif/Inchworms_1.gif','gif10' : 'assets/gif/WallPushups_1.gif',
    /////////////////////////////////////////
    'exercise1' : 'jumping jacks' , 'exercise2' : 'Child’s pose' , 'exercise3' : 'supine pushup' , 'exercise4' : 'diagonal plank' , 'exercise5' : 'triceps stretch left', 'exercise6' : 'triceps stretch right', 'exercise7' : 'arm curls crunch left' , 'exercise8' : 'arm curls crunch right' , 'exercise9' : 'inchworms ' , 'exercise10' : 'wall pushups',
    //////////////////////////////////////////
    'instructions1' : ' Start with your feet together and your arms by your sides, then jump up with your feet apart and your hands overhead. Return to the start position then do the next rep. This exercise provides a full-body workout and works all your large muscle groups.' ,
    'instructions2' : 'start with your knees and hands on the floor. Put your hands a little forward, widen your knees and out your toes together.' ,
    'instructions3' : 'lie on your back with your feet flat on the floor and your arms bent on two sides. Push your chest up as far as you can, and then slowly go back to the start position. Repeat.' ,
    'instructions4' : 'start in the straight arm plank position. Lift your right arm and left leg until they are parallel with the ground. Repeat it.' ,
    'instructions5' : 'put your left hand on your back, use your right hand to grab your left elbow and gently pull it.' ,
    'instructions6' : 'put your right hand on your back, use your left hand to grab your right elbow and gently pull it.' ,
    'instructions7' : 'lie on your left side with your knees bent and lifted. Grasp your left thigh with your left hand and put your right hand behind your head. Then raise your upper body.' ,
    'instructions8' : 'lie on your right side with your knees bent and lifted. Grasp your right thigh with your right hand and put your left hand behind your head. Then raise your upper body.' ,
    'instructions9' : 'start with your feet shoulder width apart. Bend your body and walk your hands in front of you as far as you can, then walk your hands back.' ,
    'instructions10' : 'stand in front of a wall one big step away from it. Then put your hands out gatopress your upper body towards the wall.'

  } ,

];
List legsWorkoutList = [

  {'image': 'assets/images/leg1.jpg', 'name': 'Sculpt your legs', 'description': '16 minutes - Beginner' ,
    ////////////////////////////////////////////
    'gif1' : 'assets/gif/JumpingJacks.gif','gif2' : 'assets/gif/LegRaises_1.gif','gif3' : 'assets/gif/MountainClimber_1.gif','gif4' : 'assets/gif/BackwardLunge_1.gif','gif5' : 'assets/gif/SideLyingLegLiftLeft_1.gif','gif6' : 'assets/gif/SideLyingLegLiftRight_1.gif','gif7' : 'assets/gif/Burpees_1.gif','gif8' : 'assets/gif/CalfStretchLeft_1.gif','gif9' : 'assets/gif/CalfStretchRight_1.gif','gif10' : 'assets/gif/Squats_1.gif',
    /////////////////////////////////////////
    'exercise1' : 'jumping jacks' , 'exercise2' : 'leg raises ' , 'exercise3' : ' mountain climber' , 'exercise4' : 'backward lunge ' , 'exercise5' : 'side lying leg lift left', 'exercise6' : 'side lying leg lift right ', 'exercise7' : 'burpees' , 'exercise8' : ' Calf stretches left' , 'exercise9' : ' Calf stretches right' , 'exercise10' : 'squats ',
    //////////////////////////////////////////
    'instructions1' : ' Start with your feet together and your arms by your sides, then jump up with your feet apart and your hands overhead. Return to the start position then do the next rep. This exercise provides a full-body workout and works all your large muscle groups.' ,
    'instructions2' : 'lie down on your back and put your hands beneath your hips for support. Then lift your legs up until they form a right angle with the floor.' ,
    'instructions3' : 'start in the push-up position. Bend your right knee towards your chest and keep your left leg straight, then quickly switch from one leg to another. ' ,
    'instructions4' : 'stand with your feet shoulder width apart and your hands on your hips. Step a big step backward with your right leg and lower your body until your left thigh is parallel to the floor.' ,
    'instructions5' : 'lie down on your side with your head rested on your left arm. Lift your upper leg up and return to the start position' ,
    'instructions6' : 'lie down on your side with your head rested on your right arm. Lift your upper leg up and return to the start position' ,
    'instructions7' : 'stand with your feet shoulder width apart, then put your hands on the ground and kick your feet backward. Do a quick push-up and then jump up.' ,
    'instructions8' : 'stand one big step away in front of a wall. Step forward with your right foot and push the wall with your hands. Make sure your left leg is fully extended and you can feel your left calf stretching' ,
    'instructions9' : 'stand one big step away in front of a wall. Step forward with your left foot and push the wall with your hands. Make sure your right leg is fully extended and you can feel your right calf stretching' ,
    'instructions10' : ': stand with your feet shoulder width apart and your arms stretched forward then lower your body until your thighs are parallel with the floor. Your knees should be extended in the same direction as your toes.'
  } ,
  /////////////////////////////////////////


  {'image': 'assets/images/leg2.jpg', 'name': 'Slim legs', 'description': '20 minutes - Beginner' ,
    ////////////////////////////////////////////
    'gif1' : 'assets/gif/JumpingJacks.gif','gif2' : 'assets/gif/LegBarbellCurlLeft_1.gif','gif3' : 'assets/gif/LegBarbellCurlRight_1.gif','gif4' : 'assets/gif/Donkeykicksleft_1.gif','gif5' : 'assets/gif/DonkeyKicksRight_1.gif','gif6' : 'assets/gif/KneeToChestStrechLeft_1.gif','gif7' : 'assets/gif/KneeToChestStretchRight_1.gif','gif8' : 'assets/gif/AbdominalCrunches_1.gif','gif9' : 'assets/gif/AbdominalCrunches_1.gif','gif10' : 'assets/gif/LyingButterflyStretch_1.gif',
    /////////////////////////////////////////
    'exercise1' : 'jumping jacks' , 'exercise2' : 'leg barbell curl left' , 'exercise3' : 'leg barbell curl right' , 'exercise4' : 'donkey kicks left ' , 'exercise5' : 'donkey kicks right', 'exercise6' : 'knee to chest stretch left ', 'exercise7' : 'knee to stretch chest right' , 'exercise8' : ' Split squat left' , 'exercise9' : 'Split squat right' , 'exercise10' : 'Lying butterfly position',
    //////////////////////////////////////////
    'instructions1' : ' Start with your feet together and your arms by your sides, then jump up with your feet apart and your hands overhead. Return to the start position then do the next rep. This exercise provides a full-body workout and works all your large muscle groups.' ,
    'instructions2' : 'stand against a wall. Lift your right leg up, lean forward and grab underneath your right ankle with your left hand. Bring the ankle up towards the shoulder as much as you can.' ,
    'instructions3' : 'stand against a wall. Lift your left leg up, lean forward and grab underneath your left ankle with your right hand. Bring the ankle up towards the shoulder as much as you can.' ,
    'instructions4' : 'start on all fours with your knees under your butt and your hands under your shoulder. Then lift your left leg and squeeze your butt as much as you can.' ,
    'instructions5' : 'start on all fours with your knees under your butt and your hands under your shoulder. Then lift your right leg and squeeze your butt as much as you can.' ,
    'instructions6' : 'lie on the floor with your legs extended. Lift your left knee up and grab it with both hands. Pull your left knee towards your chest as much as you can while keeping your right leg straight on the ground.' ,
    'instructions7' : 'lie on the floor with your legs extended. Lift your right knee up and grab it with both hands. Pull your right knee towards your chest as much as you can while keeping your left leg straight on the ground.' ,
    'instructions8' : 'take a big step forward with your left leg and keep your upper body straight. Then make your body go straight down and up.' ,
    'instructions9' : 'take a big step forward with your right leg and keep your upper body straight. Then make your body go straight down and up.' ,
    'instructions10' : 'lie on the floor with your feet together. Open your knees to the sides. Hold your position.'
  } ,
  ////////////////////////////////////////////


  {'image': 'assets/images/leg3.jpg', 'name': 'Leg power', 'description': '20 minutes - Medium' ,
    ////////////////////////////////////////////
    'gif1' : 'assets/gif/JumpingJacks.gif','gif2' : 'assets/gif/KneePushups_1.gif','gif3' : 'assets/gif/Burpees_1.gif','gif4' : 'assets/gif/Squats_1.gif','gif5' : 'assets/gif/BottomLegLiftLeft_1.gif','gif6' : 'assets/gif/BottomLegLiftRight_1.gif','gif7' : 'assets/gif/CurtsyLunges_1.gif','gif8' : 'assets/gif/SideLegCircleLeft_1.gif','gif9' : 'assets/gif/SideLegCirclesRight_1.gif','gif10' : 'assets/gif/Inchworms_1.gif',
    /////////////////////////////////////////
    'exercise1' : 'jumping jacks' , 'exercise2' : 'knee push ups ' , 'exercise3' : ' burpees ' , 'exercise4' : 'squats ' , 'exercise5' : 'bottom leg lift left', 'exercise6' : 'bottom leg lift right ', 'exercise7' : 'curtsy lunges' , 'exercise8' : 'side legs circles left' , 'exercise9' : 'side legs circle right' , 'exercise10' : 'Inchworms ',
    //////////////////////////////////////////
    'instructions1' : ' Start with your feet together and your arms by your sides, then jump up with your feet apart and your hands overhead. Return to the start position then do the next rep. This exercise provides a full-body workout and works all your large muscle groups.' ,
    'instructions2' : 'start in the regular push up position, then let your knees touch the floor and raise your feet up off the floor' ,
    'instructions3' : 'stand with your feet shoulder width apart, then put your hands on the ground and kick your feet backward. Do a quick push-up and then jump up.' ,
    'instructions4' : 'stand with your feet shoulder width apart and your arms stretched forward then lower your body until your thighs are parallel with the floor. Your knees should be extended in the same direction as your toes.' ,
    'instructions5' : 'lie on your left side with your head resting on your left hand. Then put your right foot forward on the floor. Lift your left leg up and down.' ,
    'instructions6' : 'lie on your right side with your head resting on your right hand. Then put your left foot forward on the floor. Lift your right leg up and down.' ,
    'instructions7' : 'stand straight up. Then step back with your left leg to the right, and bend your knees at the same time. Then switch.' ,
    'instructions8' : 'lie on your right side with your head resting on your right hand. Then lift your left leg and rotate your feet in circles.' ,
    'instructions9' : 'lie on your left side with your head resting on your left hand. Then lift your right leg and rotate your feet in circles.' ,
    'instructions10' : 'start with your feet shoulder width apart. Bend your body and walk your hands in front of you as far as you can, then walk your hands back.'
  } ,
  ////////////////////////////////////////////


  {'image': 'assets/images/leg4.jpg', 'name': 'Strong Legs', 'description': '18 minutes - Medium' ,
    ////////////////////////////////////////////
    'gif1' : 'assets/gif/JumpingJacks.gif','gif2' : 'assets/gif/JumpingSquats_1.gif','gif3' : 'assets/gif/GluteKickBackLeft_1.gif','gif4' : 'assets/gif/GluteKickBackRight_1.gif','gif5' : 'assets/gif/WallSit_1.gif','gif6' : 'assets/gif/LeftQuadStretchWithWall_1.gif','gif7' : 'assets/gif/RightQuadStretchWithWall_1.gif','gif8' : 'assets/gif/LyingButterflyStretch_1.gif','gif9' : 'assets/gif/LeaningStretcherRaises_1.gif','gif10' : 'assets/gif/CatCowPose_1.gif',
    /////////////////////////////////////////
    'exercise1' : 'jumping jacks' , 'exercise2' : 'Jumping Squats' , 'exercise3' : 'Glute kick back left' , 'exercise4' : 'Glute kick back right' , 'exercise5' : 'Wall sit', 'exercise6' : 'Left quad stretch with wall', 'exercise7' : 'right quad stretch with wall' , 'exercise8' : 'Lying butterfly position' , 'exercise9' : 'Leaning stretcher raises ' , 'exercise10' : 'Cat cow pose',
    //////////////////////////////////////////
    'instructions1' : ' Start with your feet together and your arms by your sides, then jump up with your feet apart and your hands overhead. Return to the start position then do the next rep. This exercise provides a full-body workout and works all your large muscle groups.' ,
    'instructions2' : 'start in the squat position then jump up using your abdominal muscles for strength this exercise works your abdomen.' ,
    'instructions3' : 'start on all fours with your knees under your butt and your hands directly under your shoulders. Then kick one leg back until it is parallel with the ground. Switch to the other side after several sets.' ,
    'instructions4' : 'start on all fours with your knees under your butt and your hands directly under your shoulders. Then kick one leg back until it is parallel with the ground. Switch to the other side after several sets.' ,
    'instructions5' : 'start with your back against the wall, then slide down until your knees are at a 90-degree angle. Keep your back against the wall with your hands and arms away from your legs. Hold the position.' ,
    'instructions6' : 'stand with your right hand on the wall. Bend your left leg and grasp your ankle or toes to bring your left calf close to your left thigh. Hold this position.' ,
    'instructions7' : 'stand with your left hand on the wall. Bend your right leg and grasp your ankle or toes to bring your right calf close to your right thigh. Hold this position.' ,
    'instructions8' : 'lie on the floor with your feet together. Open your knees to the sides. Hold your position.' ,
    'instructions9' : 'stand a big step away from the wall, put your hands on the wall and lean on it. Lift your heels as high as you can and then lower them down. Repeat the exercise.' ,
    'instructions10' : 'start on all fours with your knees under your butt and your hands directly under your shoulder, as you exhale, curve your back upward and let your head come down. Repeat the exercise.'
  } ,
  ///////////////////////////////////////////

  {'image': 'assets/images/leg5.jpg', 'name': 'Lean Thighs', 'description': '19 minutes - Advanced' ,
    ////////////////////////////////////////////
    'gif1' : 'assets/gif/JumpingJacks.gif','gif2' : 'assets/gif/WallResistingSingleLegCalfRaiseLeft_1.gif','gif3' : 'assets/gif/WallResistingSingleLegCalfRaiseRight_1.gif','gif4' : 'assets/gif/CalfStretchLeft_1.gif','gif5' : 'assets/gif/CalfStretchRight_1.gif','gif6' : 'assets/gif/AbdominalCrunches_1.gif','gif7' : 'assets/gif/AbdominalCrunches_1.gif','gif8' : 'assets/gif/AbdominalCrunches_1.gif','gif9' : 'assets/gif/SpineLumbarTwistStretchLeft_1.gif','gif10' : 'assets/gif/SpineLumbarTwistStretchRight_1.gif',
    /////////////////////////////////////////
    'exercise1' : 'jumping jacks' , 'exercise2' : 'Wall resisting single leg calf raise left' , 'exercise3' : 'Wall resisting single leg calf raise right' , 'exercise4' : 'Calf stretches left' , 'exercise5' : 'Calf stretches right', 'exercise6' : 'Split squat left', 'exercise7' : 'Split squat right' , 'exercise8' : 'Adductor stretch in standing' , 'exercise9' : 'Spine lumbar twist stretch left' , 'exercise10' : 'Spine lumbar twist stretch right',
    //////////////////////////////////////////
    'instructions1' : ' Start with your feet together and your arms by your sides, then jump up with your feet apart and your hands overhead. Return to the start position then do the next rep. This exercise provides a full-body workout and works all your large muscle groups.' ,
    'instructions2' : 'stand a big step away from the wall. Put your right foot on your left ankle. Put your hands on the wall and lean on it. Lift your left heel as high as you can and then lower it.' ,
    'instructions3' : 'stand a big step away from the wall. Put your left foot on your right ankle. Put your hands on the wall and lean on it. Lift your right heel as high as you can and then lower it.' ,
    'instructions4' : 'stand one big step away in front of a wall. Step forward with your right foot and push the wall with your hands. Make sure your left leg is fully extended and you can feel your left calf stretching' ,
    'instructions5' : 'stand one big step away in front of a wall. Step forward with your left foot and push the wall with your hands. Make sure your right leg is fully extended and you can feel your right calf stretching' ,
    'instructions6' : 'take a big step forward with your left leg and keep your upper body straight. Then make your body go straight down and up.' ,
    'instructions7' : 'take a big step forward with your right leg and keep your upper body straight. Then make your body go straight down and up.' ,
    'instructions8' : 'stand with your feet wide distance apart and your hands rested on your hips. Then bend your left leg and lean your body to the left side, hold a few seconds then switch.' ,
    'instructions9' : 'lie on your back with your legs extended. Lift your left leg up and use your right hand to pull your left knee to the right. But keep your other arm extended to the side on the floor' ,
    'instructions10' : 'lie on your back with your legs extended. Lift your right leg up and use your left hand to pull your left knee to the left. But keep your other arm extended to the side on the floor.'
  } ,
];
List coreWorkoutList = [



  {'image': 'assets/images/core1.jpg', 'name': 'Flat Belly', 'description': '15 minutes - Beginner',
    ////////////////////////////////////////////
    'gif1' : 'assets/gif/JumpingJacks.gif','gif2' : 'assets/gif/LegRaises_1.gif','gif3' : 'assets/gif/Sidebridgesleft_1.gif','gif4' : 'assets/gif/SideBridgesRight_1.gif','gif5' : 'assets/gif/AbdominalCrunches_1.gif','gif6' : 'assets/gif/BicycleCrunch_1.gif','gif7' : 'assets/gif/SideLyingLegLiftRight_1.gif','gif8' : 'assets/gif/SideLyingLegLiftLeft_1.gif','gif9' : 'assets/gif/V_up_1.gif','gif10' : 'assets/gif/PushupAndRotation_1.gif',
    /////////////////////////////////////////
    'exercise1' : 'jumping jacks' , 'exercise2' : 'sit ups ' , 'exercise3' : ' side bridges left' , 'exercise4' : 'side bridges right' , 'exercise5' : 'abdominal crunches', 'exercise6' : 'cyle crunches', 'exercise7' : 'side plank right ' , 'exercise8' : ' side plank left' , 'exercise9' : ' v-up ' , 'exercise10' : 'push up and rotation',
    //////////////////////////////////////////
    'instructions1' : ' Start with your feet together and your arms by your sides, then jump up with your feet apart and your hands overhead. Return to the start position then do the next rep. This exercise provides a full-body workout and works all your large muscle groups.' ,
    'instructions2' : 'lie on your back with your hands behind your ears. Then lift your upper body off the floor and slowly up to the setting position. Don’t tug your neck when you get up.' ,
    'instructions3' : 'lie on your back with your hands behind your ears. Then lift your upper body off the floor and slowly up to the setting position. Don’t tug your neck when you get up.' ,
    'instructions4' : 'lie on your left side. Put your left elbow directly under your shoulders and put your righthand on your waist. Place your right leg on your left leg.' ,
    'instructions5' : 'lie on your back with your knees bent and your arms stretched forward. Then lift your upper body off the floor.' ,
    'instructions6' : 'lie on the floor with your hands behind your ears. Raise your knees and close your right elbow toward your left knee' ,
    'instructions7' : 'lie on your left side with your forearm supporting your body. Hold your body in straight line.' ,
    'instructions8' : 'lie on the floor with your hands behind your ears. Raise your knees and close your right elbow toward your left knee' ,
    'instructions9' : 'lie on your left side with your forearm supporting your body. Hold your body in straight line.' ,
    'instructions10' : 'start in the push-up position. Then go down for a push-up and as you come up, rotate your upper body and extend your right arm upwards. Repeat the exercise with the other arm.'
  } ,
  /////////////////////////////////////////

  {'image': 'assets/images/core2.jpg', 'name': 'Abs kickstarters', 'description': '16 minutes - Beginner' ,
    ////////////////////////////////////////////
    'gif1' : 'assets/gif/JumpingJacks.gif','gif2' : 'assets/gif/RussianTwist_1.gif','gif3' : 'assets/gif/AbdominalCrunches_1.gif','gif4' : 'assets/gif/Donkeykicksleft_1.gif','gif5' : 'assets/gif/MountainClimber_1.gif','gif6' : 'assets/gif/HeelTouch_1.gif','gif7' : 'assets/gif/CrossoverCrunch_1.gif','gif8' : 'assets/gif/Plank_1.gif','gif9' : 'assets/gif/CobraStretch_1.gif','gif10' : 'assets/gif/V_up_1.gif',
    /////////////////////////////////////////
    'exercise1' : 'jumping jacks' , 'exercise2' : 'Russian twist' , 'exercise3' : 'abdominal crunches ' , 'exercise4' : 'butt bridge' , 'exercise5' : 'mountain climber ', 'exercise6' : 'heel touch ', 'exercise7' : 'crossover crunches  ' , 'exercise8' : ' plank' , 'exercise9' : 'cobra stretches' , 'exercise10' : 'v-up',
    //////////////////////////////////////////
    'instructions1' : ' Start with your feet together and your arms by your sides, then jump up with your feet apart and your hands overhead. Return to the start position then do the next rep. This exercise provides a full-body workout and works all your large muscle groups.' ,
    'instructions2' : 'sit on the floor with your knees bent, feet lifted a little bit and back tilted backwards.' ,
    'instructions3' : 'lie on your back with your knees bent and your arms stretched forward. Then lift your upper body off the floor.' ,
    'instructions4' : 'lie on your back with knees bent and feet flat on the floor. Put your arms flat at your sides. Then lift your butt up and down.' ,
    'instructions5' : 'start in the push-up position. Bend your right knee towards your chest and keep your left leg straight, then quickly switch from one leg to another.' ,
    'instructions6' : 'lie on the ground with your legs bent and your arms by your sides. Slightly lift your upper body off the floor and make your hands alternately reach your heels.' ,
    'instructions7' : 'lie on your back with your knees bent and your hands behind your ears. Raise and twist your torso.' ,
    'instructions8' : 'dd' ,
    'instructions9' : 'lie down on your stomach and bend your elbows with your hands beneath your shoulders. Then push your chest off the ground.' ,
    'instructions10' : 'lie on your back with your arms and large legs extended and your legs squeezed together. Raise your upper body and legs.'
  } ,
  ////////////////////////////////////////////

  {'image': 'assets/images/core3.jpg', 'name': 'Strong core', 'description': '16 minutes - Beginner' ,
    ////////////////////////////////////////////
    'gif1' : 'assets/gif/JumpingJacks.gif','gif2' : 'assets/gif/SpineLumbarTwistStretchLeft_1.gif','gif3' : 'assets/gif/SpineLumbarTwistStretchRight_1.gif','gif4' : 'assets/gif/LegRaises_1.gif','gif5' : 'assets/gif/Inclinepushups_1.gif','gif6' : 'assets/gif/WidearmPushups_1.gif','gif7' : 'assets/gif/TricepsDips_1.gif','gif8' : 'assets/gif/ChestStretch_1.gif','gif9' : 'assets/gif/Staggeredpushups_1.gif','gif10' : 'assets/gif/Pushups_1.gif',
    /////////////////////////////////////////
    'exercise1' : 'jumping jacks' , 'exercise2' : 'spine lumbar twist stretch left ' , 'exercise3' : ' spine lumbar twist stretch right ' , 'exercise4' : 'leg raises  ' , 'exercise5' : 'incline pushups', 'exercise6' : 'wide arm pushups   ', 'exercise7' : 'triceps dips ' , 'exercise8' : 'chest stretch ' , 'exercise9' : 'staggered pushups ' , 'exercise10' : 'pushups ',
    //////////////////////////////////////////
    'instructions1' : ' Start with your feet together and your arms by your sides, then jump up with your feet apart and your hands overhead. Return to the start position then do the next rep. This exercise provides a full-body workout and works all your large muscle groups.' ,
    'instructions2' : 'lie on your back with your legs extended. Lift your left leg up and use your right hand to pull your left knee to the right. But keep your other arm extended to the side on the floor' ,
    'instructions3' : 'lie on your back with your legs extended. Lift your right leg up and use your left hand to pull your left knee to the left. But keep your other arm extended to the side on the floor.' ,
    'instructions4' : 'lie down on your back and put your hands beneath your hips for support. Then lift your legs up until they form a right angle with the floor.' ,
    'instructions5' : 'start in the regular pushup position but with your hands elevated on a chair or bench. Then push your body up down using your arm strength.' ,
    'instructions6' : 'start in the regular push-up position but with your hands spread wider than your shoulders, then push your body up and down. Remember to keep your body straight.' ,
    'instructions7' : 'for the start position, sit on the chair. Then move your hip off the chair with your hands holding the edge of the chair. Slowly bend and stretch your arms to make your body go up and down. This is a great exercise for the triceps.' ,
    'instructions8' : 'find a doorway, take a lunge position in the doorway with your arms on the doorframe and your elbows a little lower than your shoulders, then slowly bring your chest forward. Hold this position for 30-40 seconds.' ,
    'instructions9' : 'start in the regular push-up position, but with hand in front of the other. Then do a push-up and switch the other hand in front.' ,
    'instructions10' : 'lay prone on the ground with arms supporting your body. Keep your body straight while raising and lowering your body with your arms.'
  } ,
  ////////////////////////////////////////////

];

List backWorkoutList = [



  {'image': 'assets/images/back1.jpg', 'name': 'Straight back', 'description': '20 minutes - beginner',
    ////////////////////////////////////////////
    'gif1' : 'assets/gif/JumpingJacks.gif','gif2' : 'assets/gif/LegRaises_1.gif','gif3' : 'assets/gif/Inclinepushups_1.gif','gif4' : 'assets/gif/RhomboidPulls_1.gif','gif5' : 'assets/gif/FloorTricepsDips_1.gif','gif6' : 'assets/gif/CatCowPose_1.gif','gif7' : 'assets/gif/Burpees_1.gif','gif8' : 'assets/gif/SideLyingFloorStretchLeft_1.gif','gif9' : 'assets/gif/SideLyingFloorStretchRight_1.gif','gif10' : 'assets/gif/Squats_1.gif',
    /////////////////////////////////////////
    'exercise1' : 'jumping jacks' , 'exercise2' : 'triceps kickbacks ' , 'exercise3' : ' incline pushups' , 'exercise4' : 'rhomboid pulls' , 'exercise5' : 'floor triceps dips', 'exercise6' : 'cat cow pose', 'exercise7' : 'hip hinge' , 'exercise8' : ' side lying floor stretch left' , 'exercise9' : ' side lying floor stretch right' , 'exercise10' : 'hover pushups ',
    //////////////////////////////////////////
    'instructions1' : ' Start with your feet together and your arms by your sides, then jump up with your feet apart and your hands overhead. Return to the start position then do the next rep. This exercise provides a full-body workout and works all your large muscle groups.' ,
    'instructions2' : 'lean forward, bend your knees and your elbows. Extend your arms behind you and squeeze your triceps. Please make your arms parallel to the ground when extending them' ,
    'instructions3' : 'start in the regular pushup position but with your hands elevated on a chair or bench. Then push your body up down using your arm strength' ,
    'instructions4' : 'stand with your feet shoulder width apart. Raise your arms parallel to the ground, and bend your elbows. Pull your elbows back and squeeze your shoulder blades.' ,
    'instructions5' : 'sit on the floor with your knees bent and feet flat on the floor. Put your hands beneath your shoulders with your fingers pointing toward your hips. Lift your hips off the floor.' ,
    'instructions6' : 'start on all fours with your knees under your butt and your hands directly under your shoulder, as you exhale, curve your back upward and let your head come down. Repeat the exercise.' ,
    'instructions7' : 'stand upright with your feet shoulder width apart. Sit your hips back and bend your upper body straight, then slowly go back to the start position and repeat the exercise.' ,
    'instructions8' : 'sd' ,
    'instructions9' : 'de' ,
    'instructions10' : 'start in push-up position. Lower yourself, shift your body to the left and then to the right. '
  } ,
  /////////////////////////////////////////



  {'image': 'assets/images/back2.jpg', 'name': 'Back kickstarters', 'description': '23 minutes - Beginner',
    ////////////////////////////////////////////
    'gif1' : 'assets/gif/JumpingJacks.gif','gif2' : 'assets/gif/LegBarbellCurlLeft_1.gif','gif3' : 'assets/gif/Childpose_1.gif','gif4' : 'assets/gif/Hyperextension_1.gif','gif5' : 'assets/gif/Pikepushup_1.gif','gif6' : 'assets/gif/ReversePushup_2.gif','gif7' : 'assets/gif/Inchworms_1.gif','gif8' : 'assets/gif/CatCowPose_1.gif','gif9' : 'assets/gif/SupinePushup_1.gif','gif10' : 'assets/gif/FloorYRaises_1.gif',
    /////////////////////////////////////////
    'exercise1' : 'jumping jacks' , 'exercise2' : 'swimmer and superman' , 'exercise3' : 'child’s pose' , 'exercise4' : 'hyperextension ' , 'exercise5' : 'pike pushups', 'exercise6' : 'reverse pushups ', 'exercise7' : 'inchworms' , 'exercise8' : ' cat cow pose' , 'exercise9' : 'supine pushup' , 'exercise10' : 'floor y raises ',
    //////////////////////////////////////////
    'instructions1' : ' Start with your feet together and your arms by your sides, then jump up with your feet apart and your hands overhead. Return to the start position then do the next rep. This exercise provides a full-body workout and works all your large muscle groups.' ,
    'instructions2' : 'lie on your stomach with your arms extended straight overhead. Alternately lift your opposite arm and leg.' ,
    'instructions3' : 'start with your knees and hands on the floor. Put your hands a little forward, widen your knees and out your toes together.' ,
    'instructions4' : 'lie down on your stomach with your toes touching the floor, and your chin on your hand. Raise your chest up as high as possible on the floor. Hold the position.' ,
    'instructions5' : 'start with your hands and feet on the floor. Put your hands shoulder width apart. Bend your body, and lift your hips up in an upside down ‘v’ shape. Bend your elbows and bring your head close to the floor. ' ,
    'instructions6' : 'start in the regular pushup position. Lower your body down then bend your knees and move your hips backward.' ,
    'instructions7' : 'start with your feet shoulder width apart. Bend your body and walk your hands in front of you as far as you can, then walk your hands back.' ,
    'instructions8' : 'start on all fours with your knees under your butt and your hands directly under your shoulder, as you exhale, curve your back upward and let your head come down. Repeat the exercise.' ,
    'instructions9' : 'lie on your back with your feet flat on the floor and your arms bent on two sides. Push your chest up as far as you can, and then slowly go back to the start position. Repeat.' ,
    'instructions10' : 'lie face down on the floor with your arms fully extended and your thumbs pointing up, raise your arms off the ground then slowly go back to the start position.'
  } ,
  ////////////////////////////////////////////

];


List fullBodyWorkoutList = [

  {'image': 'assets/images/fullbody1.jpg', 'name': 'Hourglass body ', 'description': '14 minutes - Beginner',
    ////////////////////////////////////////////
    'gif1' : 'assets/gif/RussianTwist_1.gif','gif2' : 'assets/gif/LegRaises_1.gif','gif3' : 'assets/gif/ButtBridge_1.gif','gif4' : 'assets/gif/Sit_ups_1.gif','gif5' : 'assets/gif/V_up_1.gif','gif6' : 'assets/gif/PushupAndRotation_1.gif','gif7' : 'assets/gif/SpineLumbarTwistStretchLeft_1.gif','gif8' : 'assets/gif/SpineLumbarTwistStretchRight_1.gif','gif9' : 'assets/gif/ArmScissors_1.gif','gif10' : 'assets/gif/RhomboidPulls_1.gif',
    /////////////////////////////////////////
    'exercise1' : 'russian twist' , 'exercise2' : 'leg raises ' , 'exercise3' : ' butt bridge ' , 'exercise4' : 'sit ups  ' , 'exercise5' : 'v up ', 'exercise6' : 'push up and rotation  ', 'exercise7' : 'spine lumbar twist stretch left ' , 'exercise8' : ' spine lumbar twist stretch right' , 'exercise9' : ' arm scissors ' , 'exercise10' : 'rhomboid pulls ',
    //////////////////////////////////////////
    'instructions1' : 'sit on the floor with your knees bent, feet lifted a little bit and back tilted backwards.' ,
    'instructions2' : 'lie down on your back and put your hands beneath your hips for support. Then lift your legs up until they form a right angle with the floor.' ,
    'instructions3' : 'lie on your back with knees bent and feet flat on the floor. Put your arms flat at your sides. Then lift your butt up and down.' ,
    'instructions4' : 'lie on your back with your hands behind your ears. Then lift your upper body off the floor and slowly up to the setting position. Don’t tug your neck when you get up.' ,
    'instructions5' : 'lie on your back with your arms and large legs extended and your legs squeezed together. Raise your upper body and legs.' ,
    'instructions6' : 'start in the push-up position. Then go down for a push-up and as you come up, rotate your upper body and extend your right arm upwards. Repeat the exercise with the other arm.' ,
    'instructions7' : 'lie on your back with your legs extended. Lift your left leg up and use your right hand to pull your left knee to the right. But keep your other arm extended to the side on the floor' ,
    'instructions8' : 'lie on your back with your legs extended. Lift your right leg up and use your left hand to pull your left knee to the left. But keep your other arm extended to the side on the floor.' ,
    'instructions9' : 'stand upright with your feet shoulder width apart. Stretch your arms in front of you at shoulder height with one arm overlap the other in the shape of letter ’x’' ,
    'instructions10' : 'stand with your feet shoulder width apart. Raise your arms parallel to the ground, and bend your elbows. Pull your elbows back and squeeze your shoulder blades.'
  } ,
  /////////////////////////////////////////

//li t7t arms2


  {'image': 'assets/images/fullbody2.jpg', 'name': 'Full body Burn', 'description': '20 minutes - Beginner' ,
    ////////////////////////////////////////////
    ////////////////////////////////////////////
    'gif1' : 'assets/gif/JumpingJacks.gif','gif2' : 'assets/gif/Inchworms_1.gif','gif3' : 'assets/gif/WallPushups_1.gif','gif4' : 'assets/gif/TricepsStretchLeft_1.gif','gif5' : 'assets/gif/TricepsStretchRight_1.gif','gif6' : 'assets/gif/StandingBicepsStretchLeft_1.gif','gif7' : 'assets/gif/StandingBicepsStretchright_1.gif','gif8' : 'assets/gif/ModifiedPushupLowHold_1.gif','gif9' : 'assets/gif/DiamondPushups_1.gif','gif10' : 'assets/gif/SkippingWithoutRope_1.gif',
    /////////////////////////////////////////
    'exercise1' : 'jumping jacks' , 'exercise2' : 'Inchworms' , 'exercise3' : 'Wall push-ups' , 'exercise4' : 'Triceps stretch left' , 'exercise5' : 'Triceps stretch right', 'exercise6' : 'Standing biceps stretch left', 'exercise7' : 'Standing biceps stretch right' , 'exercise8' : ' Modified push-up low hold' , 'exercise9' : 'diamond pushups' , 'exercise10' : 'skipping without rope',
    //////////////////////////////////////////
    'instructions1' : ' Start with your feet together and your arms by your sides, then jump up with your feet apart and your hands overhead. Return to the start position then do the next rep. This exercise provides a full-body workout and works all your large muscle groups.' ,
    'instructions2' : 'start with your feet shoulder width apart. Bend your body and walk your hands in front of you as far as you can, then walk your hands back.' ,
    'instructions3' : 'stand in front of a wall one big step away from it. Then put your hands out to press your upper body towards the wall.' ,
    'instructions4' : 'put your left hand on your back, use your right hand to grab your left elbow and gently pull it.' ,
    'instructions5' : 'put your right hand on your back, use your left hand to grab your right elbow and gently pull it.' ,
    'instructions6' : 'standing with your left arm close to the wall. Extend your left arm and put your left hand on the wall then turn your body.' ,
    'instructions7' : 'standing with your right arm close to the wall. Extend your right arm and put your right hand on the wall then turn your body.' ,
    'instructions8' : 'start in the standard push-up position but with your feet shoulder-width apart and knees on the ground. Hold your position.' ,
    'instructions9' : 'start in the push-up position. Make a diamond shape with your forefingers and thumbs together under your chest. Then push your body up and down. ' ,
    'instructions10' : 'place your arms at your sides and pretend to hold a skipping rope handle in each hand.'
  } ,
  ////////////////////////////////////////////


/////li t7t legs2



  {'image': 'assets/images/fullbody3.jpg', 'name': 'Stronger body', 'description': '25 minutes - Medium',
    ////////////////////////////////////////////
    'gif1' : 'assets/gif/JumpingJacks.gif','gif2' : 'assets/gif/LegBarbellCurlLeft_1.gif','gif3' : 'assets/gif/LegBarbellCurlRight_1.gif','gif4' : 'assets/gif/Donkeykicksleft_1.gif','gif5' : 'assets/gif/DonkeyKicksRight_1.gif','gif6' : 'assets/gif/KneeToChestStrechLeft_1.gif','gif7' : 'assets/gif/KneeToChestStretchRight_1.gif','gif8' : 'assets/gif/AbdominalCrunches_1.gif','gif9' : 'assets/gif/AbdominalCrunches_1.gif','gif10' : 'assets/gif/LyingButterflyStretch_1.gif',
    /////////////////////////////////////////
    'exercise1' : 'jumping jacks' , 'exercise2' : 'leg barbell curl left' , 'exercise3' : 'leg barbell curl right' , 'exercise4' : 'donkey kicks left ' , 'exercise5' : 'donkey kicks right', 'exercise6' : 'knee to chest stretch left ', 'exercise7' : 'knee to stretch chest right' , 'exercise8' : ' Split squat left' , 'exercise9' : 'Split squat right' , 'exercise10' : 'Lying butterfly position',
    //////////////////////////////////////////
    'instructions1' : ' Start with your feet together and your arms by your sides, then jump up with your feet apart and your hands overhead. Return to the start position then do the next rep. This exercise provides a full-body workout and works all your large muscle groups.' ,
    'instructions2' : 'stand against a wall. Lift your right leg up, lean forward and grab underneath your right ankle with your left hand. Bring the ankle up towards the shoulder as much as you can.' ,
    'instructions3' : 'stand against a wall. Lift your left leg up, lean forward and grab underneath your left ankle with your right hand. Bring the ankle up towards the shoulder as much as you can.' ,
    'instructions4' : 'start on all fours with your knees under your butt and your hands under your shoulder. Then lift your left leg and squeeze your butt as much as you can.' ,
    'instructions5' : 'start on all fours with your knees under your butt and your hands under your shoulder. Then lift your right leg and squeeze your butt as much as you can.' ,
    'instructions6' : 'lie on the floor with your legs extended. Lift your left knee up and grab it with both hands. Pull your left knee towards your chest as much as you can while keeping your right leg straight on the ground.' ,
    'instructions7' : 'lie on the floor with your legs extended. Lift your right knee up and grab it with both hands. Pull your right knee towards your chest as much as you can while keeping your left leg straight on the ground.' ,
    'instructions8' : 'take a big step forward with your left leg and keep your upper body straight. Then make your body go straight down and up.' ,
    'instructions9' : 'take a big step forward with your right leg and keep your upper body straight. Then make your body go straight down and up.' ,
    'instructions10' : 'lie on the floor with your feet together. Open your knees to the sides. Hold your position.'
  } ,
  ////////////////////////////////////////////
];




List stretchingWorkoutList = [



  {'image': 'assets/images/stretching1.jpg', 'name': 'Stretch Your Body', 'description': '26 minutes -Beginner ',
    ////////////////////////////////////////////
    'gif1' : 'assets/gif/CalfStretchLeft_1.gif','gif2' : 'assets/gif/CalfStretchRight_1.gif','gif3' : 'assets/gif/ChestStretch_1.gif','gif4' : 'assets/gif/CobraStretch_1.gif','gif5' : 'assets/gif/KneeToChestStretchRight_1.gif','gif6' : 'assets/gif/KneeToChestStrechLeft_1.gif','gif7' : 'assets/gif/LeaningStretcherRaises_1.gif','gif8' : 'assets/gif/LeftQuadStretchWithWall_1.gif','gif9' : 'assets/gif/RightQuadStretchWithWall_1.gif','gif10' : 'assets/gif/LyingButterflyStretch_1.gif',
    /////////////////////////////////////////
    'exercise1' : 'calf stretch left' , 'exercise2' : 'calf stretch right  ' , 'exercise3' : ' chest stretch ' , 'exercise4' : 'cobra stretch ' , 'exercise5' : 'knee to chest stretch right', 'exercise6' : 'knee to chest stretch left ', 'exercise7' : 'leaning stretcher raises ' , 'exercise8' : 'left quad stretch with wall ' , 'exercise9' : 'right quad stretch with wall ' , 'exercise10' : 'lying butterfly stretch',
    //////////////////////////////////////////
    'instructions1' : 'stand one big step away in front of a wall. Step forward with your right foot and push the wall with your hands. Make sure your left leg is fully extended and you can feel your left calf stretching' ,
    'instructions2' : 'stand one big step away in front of a wall. Step forward with your left foot and push the wall with your hands. Make sure your right leg is fully extended and you can feel your right calf stretching' ,
    'instructions3' : 'lie on the floor with your legs extended. Lift your right knee up and grab it with both hands. Pull your right knee towards your chest as much as you can while keeping your left leg straight on the ground.' ,
    'instructions4' : 'lie down on your stomach and bend your elbows with your hands beneath your shoulders. Then push your chest off the ground.' ,
    'instructions5' : 'lie on the floor with your legs extended. Lift your left knee up and grab it with both hands. Pull your left knee towards your chest as much as you can while keeping your right leg straight on the ground.' ,
    'instructions6' : 'lie on the floor with your legs extended. Lift your right knee up and grab it with both hands. Pull your right knee towards your chest as much as you can while keeping your left leg straight on the ground.' ,
    'instructions7' : 'stand a big step away from the wall, put your hands on the wall and lean on it. Lift your heels as high as you can and then lower them down. Repeat the exercise.' ,
    'instructions8' : 'stand with your right hand on the wall. Bend your left leg and grasp your ankle or toes to bring your left calf close to your left thigh. Hold this position.' ,
    'instructions9' : 'stand with your left hand on the wall. Bend your right leg and grasp your ankle or toes to bring your right calf close to your right thigh. Hold this position.' ,
    'instructions10' : 'lie on the floor with your feet together. Open your knees to the sides. Hold your position.'
  } ,
  /////////////////////////////////////////





  {'image': 'assets/images/stretching2.jpg', 'name': 'Power Stretching', 'description': 'sdssdcsdcsd',
    ////////////////////////////////////////////
    'gif1' : 'assets/gif/Shoulderstretch_1.gif','gif2' : 'assets/gif/SideLyingFloorStretchLeft_1.gif','gif3' : 'assets/gif/SideLyingFloorStretchRight_1.gif','gif4' : 'assets/gif/SpineLumbarTwistStretchLeft_1.gif','gif5' : 'assets/gif/SpineLumbarTwistStretchRight_1.gif','gif6' : 'assets/gif/StandingBicepsStretchLeft_1.gif','gif7' : 'assets/gif/StandingBicepsStretchright_1.gif','gif8' : 'assets/gif/TricepsStretchLeft_1.gif','gif9' : 'assets/gif/TricepsStretchRight_1.gif','gif10' : 'assets/gif/CobraStretch_1.gif',
    /////////////////////////////////////////
    'exercise1' : 'shoulder stretch ' , 'exercise2' : 'side lying floor stretch right ' , 'exercise3' : 'side lying floor stretch left ' , 'exercise4' : 'spine lumbar twist stretch left' , 'exercise5' : 'spine lumbar twist stretch right ', 'exercise6' : 'standing biceps stretch left ', 'exercise7' : 'standing biceps stretch right ' , 'exercise8' : 'triceps stretch left ' , 'exercise9' : '– triceps stretch right' , 'exercise10' : 'cobra stretch',
    //////////////////////////////////////////
    'instructions1' : 'place one arm across your body, parallel to the ground, then use the other arm to pull the parallel arm toward your chest.' ,
    'instructions2' : 'lie on the floor with your legs extended. Lift your left knee up and grab it with both hands. Pull your left knee towards your chest as much as you can while keeping your right leg straight on the ground.' ,
    'instructions3' : 'lie on the floor with your legs extended. Lift your right knee up and grab it with both hands. Pull your right knee towards your chest as much as you can while keeping your left leg straight on the ground.' ,
    'instructions4' : 'lie on your back with your legs extended. Lift your left leg up and use your right hand to pull your left knee to the right. But keep your other arm extended to the side on the floor' ,
    'instructions5' : 'lie on your back with your legs extended. Lift your right leg up and use your left hand to pull your left knee to the left. But keep your other arm extended to the side on the floor.' ,
    'instructions6' : 'standing with your left arm close to the wall. Extend your left arm and put your left hand on the wall then turn your body.' ,
    'instructions7' : 'standing with your right arm close to the wall. Extend your right arm and put your right hand on the wall then turn your body.' ,
    'instructions8' : 'put your left hand on your back, use your right hand to grab your left elbow and gently pull it.' ,
    'instructions9' : 'put your right hand on your back, use your left hand to grab your right elbow and gently pull it.' ,
    'instructions10' : 'lie down on your stomach and bend your elbows with your hands beneath your shoulders. Then push your chest off the ground.'
  } ,
  ////////////////////////////////////////////
];

List beginnerWorkoutList = [
////legs3
  {'image': 'assets/images/leg3.jpg', 'name': 'Leg power', 'description': '20 minutes - Medium' ,
    ////////////////////////////////////////////
    'gif1' : 'assets/gif/JumpingJacks.gif','gif2' : 'assets/gif/KneePushups_1.gif','gif3' : 'assets/gif/Burpees_1.gif','gif4' : 'assets/gif/Squats_1.gif','gif5' : 'assets/gif/BottomLegLiftLeft_1.gif','gif6' : 'assets/gif/BottomLegLiftRight_1.gif','gif7' : 'assets/gif/CurtsyLunges_1.gif','gif8' : 'assets/gif/SideLegCircleLeft_1.gif','gif9' : 'assets/gif/SideLegCirclesRight_1.gif','gif10' : 'assets/gif/Inchworms_1.gif',
    /////////////////////////////////////////
    'exercise1' : 'jumping jacks' , 'exercise2' : 'knee push ups ' , 'exercise3' : ' burpees ' , 'exercise4' : 'squats ' , 'exercise5' : 'bottom leg lift left', 'exercise6' : 'bottom leg lift right ', 'exercise7' : 'curtsy lunges' , 'exercise8' : 'side legs circles left' , 'exercise9' : 'side legs circle right' , 'exercise10' : 'Inchworms ',
    //////////////////////////////////////////
    'instructions1' : ' Start with your feet together and your arms by your sides, then jump up with your feet apart and your hands overhead. Return to the start position then do the next rep. This exercise provides a full-body workout and works all your large muscle groups.' ,
    'instructions2' : 'start in the regular push up position, then let your knees touch the floor and raise your feet up off the floor' ,
    'instructions3' : 'stand with your feet shoulder width apart, then put your hands on the ground and kick your feet backward. Do a quick push-up and then jump up.' ,
    'instructions4' : 'stand with your feet shoulder width apart and your arms stretched forward then lower your body until your thighs are parallel with the floor. Your knees should be extended in the same direction as your toes.' ,
    'instructions5' : 'lie on your left side with your head resting on your left hand. Then put your right foot forward on the floor. Lift your left leg up and down.' ,
    'instructions6' : 'lie on your right side with your head resting on your right hand. Then put your left foot forward on the floor. Lift your right leg up and down.' ,
    'instructions7' : 'stand straight up. Then step back with your left leg to the right, and bend your knees at the same time. Then switch.' ,
    'instructions8' : 'lie on your right side with your head resting on your right hand. Then lift your left leg and rotate your feet in circles.' ,
    'instructions9' : 'lie on your left side with your head resting on your left hand. Then lift your right leg and rotate your feet in circles.' ,
    'instructions10' : 'start with your feet shoulder width apart. Bend your body and walk your hands in front of you as far as you can, then walk your hands back.'
  } ,
  ///////arms3
  {'image': 'assets/images/arm3.jpg', 'name': 'Killer arm', 'description': '15 minutes - Medium',
    ////////////////////////////////////////////
    'gif1' : 'assets/gif/JumpingJacks.gif','gif2' : 'assets/gif/FloorTricepsDips_1.gif','gif3' : 'assets/gif/MilitaryPushUps_1.gif','gif4' : 'assets/gif/AlternatingHooks_1.gif','gif5' : 'assets/gif/SkippingWithoutRope_1.gif','gif6' : 'assets/gif/ArmcurlsCrunchLeft_1.gif','gif7' : 'assets/gif/ArmcurlsCrunchRight_1.gif','gif8' : 'assets/gif/ShoulderGators_1.gif','gif9' : 'assets/gif/DoorwayCurlesLeft_1.gif','gif10' : 'assets/gif/DoorwayCurlsRight_1.gif',
    /////////////////////////////////////////
    'exercise1' : 'jumping jacks' , 'exercise2' : 'Floor triceps dips' , 'exercise3' : 'Military push-ups' , 'exercise4' : 'Alternating Hooks' , 'exercise5' : 'Skipping without rope', 'exercise6' : 'Arm curls crunch left', 'exercise7' : 'Arm curls crunch right' , 'exercise8' : 'Shoulder gators' , 'exercise9' : 'Doorway curls left' , 'exercise10' : 'Doorway curls right',
    //////////////////////////////////////////
    'instructions1' : ' Start with your feet together and your arms by your sides, then jump up with your feet apart and your hands overhead. Return to the start position then do the next rep. This exercise provides a full-body workout and works all your large muscle groups.' ,
    'instructions2' : 'sit on the floor with your knees bent and feet flat on the floor. Put your hands beneath your shoulders with your fingers pointing toward your hips. Lift your hips off the floor' ,
    'instructions3' : 'start in a push-up position with your hands directly under your shoulders. Bend your elbows and lower your body and then push your body back to the starting position and repeat. ' ,
    'instructions4' : 'stand with your feet shoulder width apart, and place your dominant foot forward. Raise your right arm to shoulder height. Rotate your shoulders and hips and punch towards the left.' ,
    'instructions5' : 'place your arms at your sides and pretend to hold a skipping rope handle in each hand.' ,
    'instructions6' : 'lie on your left side with your knees bent and lifted. Grasp your left thigh with your left hand and put your right hand behind your head. Then raise your upper body.' ,
    'instructions7' : 'lie on your right side with your knees bent and lifted. Grasp your right thigh with your right hand and put your left hand behind your head. Then raise your upper body.' ,
    'instructions8' : 'stand upright with your hands beside your ears and elbows facing each side. Rotate your elbows until both are facing the front.' ,
    'instructions9' : 'stand upright with your hands beside your ears and elbows facing each side. Rotate your elbows until both are facing the front.' ,
    'instructions10' : 'stand in a doorway. Grasp the doorframe using your right hand, and put your feet close to the bottom of the door. Extend your right arm and lean back, then pull at the doorframe and come back.'

  } ,

];

List intermediateWorkoutList = [

  //back2
  {'image': 'assets/images/back2.jpg', 'name': 'Back kickstarters', 'description': '23 minutes - Beginner',
    ////////////////////////////////////////////
    'gif1' : 'assets/gif/JumpingJacks.gif','gif2' : 'assets/gif/LegBarbellCurlLeft_1.gif','gif3' : 'assets/gif/Childpose_1.gif','gif4' : 'assets/gif/Hyperextension_1.gif','gif5' : 'assets/gif/Pikepushup_1.gif','gif6' : 'assets/gif/ReversePushup_2.gif','gif7' : 'assets/gif/Inchworms_1.gif','gif8' : 'assets/gif/CatCowPose_1.gif','gif9' : 'assets/gif/SupinePushup_1.gif','gif10' : 'assets/gif/FloorYRaises_1.gif',
    /////////////////////////////////////////
    'exercise1' : 'jumping jacks' , 'exercise2' : 'swimmer and superman' , 'exercise3' : 'child’s pose' , 'exercise4' : 'hyperextension ' , 'exercise5' : 'pike pushups', 'exercise6' : 'reverse pushups ', 'exercise7' : 'inchworms' , 'exercise8' : ' cat cow pose' , 'exercise9' : 'supine pushup' , 'exercise10' : 'floor y raises ',
    //////////////////////////////////////////
    'instructions1' : ' Start with your feet together and your arms by your sides, then jump up with your feet apart and your hands overhead. Return to the start position then do the next rep. This exercise provides a full-body workout and works all your large muscle groups.' ,
    'instructions2' : 'lie on your stomach with your arms extended straight overhead. Alternately lift your opposite arm and leg.' ,
    'instructions3' : 'start with your knees and hands on the floor. Put your hands a little forward, widen your knees and out your toes together.' ,
    'instructions4' : 'lie down on your stomach with your toes touching the floor, and your chin on your hand. Raise your chest up as high as possible on the floor. Hold the position.' ,
    'instructions5' : 'start with your hands and feet on the floor. Put your hands shoulder width apart. Bend your body, and lift your hips up in an upside down ‘v’ shape. Bend your elbows and bring your head close to the floor. ' ,
    'instructions6' : 'start in the regular pushup position. Lower your body down then bend your knees and move your hips backward.' ,
    'instructions7' : 'start with your feet shoulder width apart. Bend your body and walk your hands in front of you as far as you can, then walk your hands back.' ,
    'instructions8' : 'start on all fours with your knees under your butt and your hands directly under your shoulder, as you exhale, curve your back upward and let your head come down. Repeat the exercise.' ,
    'instructions9' : 'lie on your back with your feet flat on the floor and your arms bent on two sides. Push your chest up as far as you can, and then slowly go back to the start position. Repeat.' ,
    'instructions10' : 'lie face down on the floor with your arms fully extended and your thumbs pointing up, raise your arms off the ground then slowly go back to the start position.'
  } ,

  //core2
  {'image': 'assets/images/core2.jpg', 'name': 'Abs kickstarters', 'description': '16 minutes - Beginner' ,
    ////////////////////////////////////////////
    'gif1' : 'assets/gif/JumpingJacks.gif','gif2' : 'assets/gif/RussianTwist_1.gif','gif3' : 'assets/gif/AbdominalCrunches_1.gif','gif4' : 'assets/gif/Donkeykicksleft_1.gif','gif5' : 'assets/gif/MountainClimber_1.gif','gif6' : 'assets/gif/HeelTouch_1.gif','gif7' : 'assets/gif/CrossoverCrunch_1.gif','gif8' : 'assets/gif/Plank_1.gif','gif9' : 'assets/gif/CobraStretch_1.gif','gif10' : 'assets/gif/V_up_1.gif',
    /////////////////////////////////////////
    'exercise1' : 'jumping jacks' , 'exercise2' : 'Russian twist' , 'exercise3' : 'abdominal crunches ' , 'exercise4' : 'butt bridge' , 'exercise5' : 'mountain climber ', 'exercise6' : 'heel touch ', 'exercise7' : 'crossover crunches  ' , 'exercise8' : ' plank' , 'exercise9' : 'cobra stretches' , 'exercise10' : 'v-up',
    //////////////////////////////////////////
    'instructions1' : ' Start with your feet together and your arms by your sides, then jump up with your feet apart and your hands overhead. Return to the start position then do the next rep. This exercise provides a full-body workout and works all your large muscle groups.' ,
    'instructions2' : 'sit on the floor with your knees bent, feet lifted a little bit and back tilted backwards.' ,
    'instructions3' : 'lie on your back with your knees bent and your arms stretched forward. Then lift your upper body off the floor.' ,
    'instructions4' : 'lie on your back with knees bent and feet flat on the floor. Put your arms flat at your sides. Then lift your butt up and down.' ,
    'instructions5' : 'start in the push-up position. Bend your right knee towards your chest and keep your left leg straight, then quickly switch from one leg to another.' ,
    'instructions6' : 'lie on the ground with your legs bent and your arms by your sides. Slightly lift your upper body off the floor and make your hands alternately reach your heels.' ,
    'instructions7' : 'lie on your back with your knees bent and your hands behind your ears. Raise and twist your torso.' ,
    'instructions8' : 'start in the regular pushup position. Lower your body down then bend your knees and move your hips backward.' ,
    'instructions9' : 'lie down on your stomach and bend your elbows with your hands beneath your shoulders. Then push your chest off the ground.' ,
    'instructions10' : 'lie on your back with your arms and large legs extended and your legs squeezed together. Raise your upper body and legs.'
  } ,
];

List advancedWorkoutList = [
/////fullbody

  {'image': 'assets/images/fullbody1.jpg', 'name': 'Hourglass body ', 'description': '14 minutes - Beginner',
    ////////////////////////////////////////////
    'gif1' : 'assets/gif/RussianTwist_1.gif','gif2' : 'assets/gif/LegRaises_1.gif','gif3' : 'assets/gif/ButtBridge_1.gif','gif4' : 'assets/gif/Sit_ups_1.gif','gif5' : 'assets/gif/V_up_1.gif','gif6' : 'assets/gif/PushupAndRotation_1.gif','gif7' : 'assets/gif/SpineLumbarTwistStretchLeft_1.gif','gif8' : 'assets/gif/SpineLumbarTwistStretchRight_1.gif','gif9' : 'assets/gif/ArmScissors_1.gif','gif10' : 'assets/gif/RhomboidPulls_1.gif',
    /////////////////////////////////////////
    'exercise1' : 'russian twist' , 'exercise2' : 'leg raises ' , 'exercise3' : ' butt bridge ' , 'exercise4' : 'sit ups  ' , 'exercise5' : 'v up ', 'exercise6' : 'push up and rotation  ', 'exercise7' : 'spine lumbar twist stretch left ' , 'exercise8' : ' spine lumbar twist stretch right' , 'exercise9' : ' arm scissors ' , 'exercise10' : 'rhomboid pulls ',
    //////////////////////////////////////////
    'instructions1' : 'sit on the floor with your knees bent, feet lifted a little bit and back tilted backwards.' ,
    'instructions2' : 'lie down on your back and put your hands beneath your hips for support. Then lift your legs up until they form a right angle with the floor.' ,
    'instructions3' : 'lie on your back with knees bent and feet flat on the floor. Put your arms flat at your sides. Then lift your butt up and down.' ,
    'instructions4' : 'lie on your back with your hands behind your ears. Then lift your upper body off the floor and slowly up to the setting position. Don’t tug your neck when you get up.' ,
    'instructions5' : 'lie on your back with your arms and large legs extended and your legs squeezed together. Raise your upper body and legs.' ,
    'instructions6' : 'start in the push-up position. Then go down for a push-up and as you come up, rotate your upper body and extend your right arm upwards. Repeat the exercise with the other arm.' ,
    'instructions7' : 'lie on your back with your legs extended. Lift your left leg up and use your right hand to pull your left knee to the right. But keep your other arm extended to the side on the floor' ,
    'instructions8' : 'lie on your back with your legs extended. Lift your right leg up and use your left hand to pull your left knee to the left. But keep your other arm extended to the side on the floor.' ,
    'instructions9' : 'stand upright with your feet shoulder width apart. Stretch your arms in front of you at shoulder height with one arm overlap the other in the shape of letter ’x’' ,
    'instructions10' : 'stand with your feet shoulder width apart. Raise your arms parallel to the ground, and bend your elbows. Pull your elbows back and squeeze your shoulder blades.'
  } ,
///////core3
  {'image': 'assets/images/core3.jpg', 'name': 'Strong core', 'description': '16 minutes - Beginner' ,
    ////////////////////////////////////////////
    'gif1' : 'assets/gif/JumpingJacks.gif','gif2' : 'assets/gif/SpineLumbarTwistStretchLeft_1.gif','gif3' : 'assets/gif/SpineLumbarTwistStretchRight_1.gif','gif4' : 'assets/gif/LegRaises_1.gif','gif5' : 'assets/gif/Inclinepushups_1.gif','gif6' : 'assets/gif/WidearmPushups_1.gif','gif7' : 'assets/gif/TricepsDips_1.gif','gif8' : 'assets/gif/ChestStretch_1.gif','gif9' : 'assets/gif/Staggeredpushups_1.gif','gif10' : 'assets/gif/Pushups_1.gif',
    /////////////////////////////////////////
    'exercise1' : 'jumping jacks' , 'exercise2' : 'spine lumbar twist stretch left ' , 'exercise3' : ' spine lumbar twist stretch right ' , 'exercise4' : 'leg raises  ' , 'exercise5' : 'incline pushups', 'exercise6' : 'wide arm pushups   ', 'exercise7' : 'triceps dips ' , 'exercise8' : 'chest stretch ' , 'exercise9' : 'staggered pushups ' , 'exercise10' : 'pushups ',
    //////////////////////////////////////////
    'instructions1' : ' Start with your feet together and your arms by your sides, then jump up with your feet apart and your hands overhead. Return to the start position then do the next rep. This exercise provides a full-body workout and works all your large muscle groups.' ,
    'instructions2' : 'lie on your back with your legs extended. Lift your left leg up and use your right hand to pull your left knee to the right. But keep your other arm extended to the side on the floor' ,
    'instructions3' : 'lie on your back with your legs extended. Lift your right leg up and use your left hand to pull your left knee to the left. But keep your other arm extended to the side on the floor.' ,
    'instructions4' : 'lie down on your back and put your hands beneath your hips for support. Then lift your legs up until they form a right angle with the floor.' ,
    'instructions5' : 'start in the regular pushup position but with your hands elevated on a chair or bench. Then push your body up down using your arm strength.' ,
    'instructions6' : 'start in the regular push-up position but with your hands spread wider than your shoulders, then push your body up and down. Remember to keep your body straight.' ,
    'instructions7' : 'for the start position, sit on the chair. Then move your hip off the chair with your hands holding the edge of the chair. Slowly bend and stretch your arms to make your body go up and down. This is a great exercise for the triceps.' ,
    'instructions8' : 'find a doorway, take a lunge position in the doorway with your arms on the doorframe and your elbows a little lower than your shoulders, then slowly bring your chest forward. Hold this position for 30-40 seconds.' ,
    'instructions9' : 'start in the regular push-up position, but with hand in front of the other. Then do a push-up and switch the other hand in front.' ,
    'instructions10' : 'lay prone on the ground with arms supporting your body. Keep your body straight while raising and lowering your body with your arms.'
  } ,

];
class Legs extends StatefulWidget {
  const Legs({Key? key}) : super(key: key);
  @override
  _LegsState createState() => _LegsState();
}
class _LegsState extends State<Legs> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
        title: const Text(
          "Legs Exercises",
          textAlign: TextAlign.justify,
        ),
        backgroundColor: Colors.blueGrey,),
      body: ListView.builder(itemBuilder:  (context , index) {
        return  Workout(title: legsWorkoutList[index]['name'],  img: legsWorkoutList[index]['image'], description: legsWorkoutList[index]['description'],
          gif1: legsWorkoutList[index]['gif1'],gif2: legsWorkoutList[index]['gif2'],gif3: legsWorkoutList[index]['gif3'],gif4: legsWorkoutList[index]['gif4'],gif5: legsWorkoutList[index]['gif5'],gif6: legsWorkoutList[index]['gif6'],gif7: legsWorkoutList[index]['gif7'],gif8: legsWorkoutList[index]['gif8'],gif9: legsWorkoutList[index]['gif9'],gif10: legsWorkoutList[index]['gif10'],
          exercise1: legsWorkoutList[index]['exercise1'], exercise2: legsWorkoutList[index]['exercise2'],exercise3: legsWorkoutList[index]['exercise3'],exercise4: legsWorkoutList[index]['exercise4'],exercise5: legsWorkoutList[index]['exercise5'],exercise6: legsWorkoutList[index]['exercise6'],exercise7: legsWorkoutList[index]['exercise7'],exercise8: legsWorkoutList[index]['exercise8'],exercise9: legsWorkoutList[index]['exercise9'],exercise10: legsWorkoutList[index]['exercise10'],
          instructions1: legsWorkoutList[index]['instructions1'], instructions2:legsWorkoutList[index]['instructions2'],instructions3: legsWorkoutList[index]['instructions3'],instructions4: legsWorkoutList[index]['instructions4'],instructions5: legsWorkoutList[index]['instructions5'],instructions6: legsWorkoutList[index]['instructions6'],instructions7: legsWorkoutList[index]['instructions7'],instructions8: legsWorkoutList[index]['instructions8'],instructions9: legsWorkoutList[index]['instructions9'],instructions10: legsWorkoutList[index]['instructions10'],
        );
      },
        itemCount: legsWorkoutList.length,),
    );
  }
}


class Arms extends StatefulWidget {
  const Arms({Key? key}) : super(key: key);

  @override
  _ArmsState createState() => _ArmsState();
}

class _ArmsState extends State<Arms> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: const Text(
          "Arms Exercises",
          textAlign: TextAlign.justify,
        ),
        backgroundColor: Colors.blueGrey,),
      body: ListView.builder(itemBuilder:  (context , index) {
        return  Workout(title: armsWorkoutList[index]['name'],  img: armsWorkoutList[index]['image'], description: armsWorkoutList[index]['description'],
          gif1: armsWorkoutList[index]['gif1'],gif2: armsWorkoutList[index]['gif2'],gif3: armsWorkoutList[index]['gif3'],gif4: armsWorkoutList[index]['gif4'],gif5: armsWorkoutList[index]['gif5'],gif6: armsWorkoutList[index]['gif6'],gif7: armsWorkoutList[index]['gif7'],gif8: armsWorkoutList[index]['gif8'],gif9: armsWorkoutList[index]['gif9'],gif10: armsWorkoutList[index]['gif10'],
          exercise1: armsWorkoutList[index]['exercise1'], exercise2: armsWorkoutList[index]['exercise2'],exercise3: armsWorkoutList[index]['exercise3'],exercise4: armsWorkoutList[index]['exercise4'],exercise5: armsWorkoutList[index]['exercise5'],exercise6: armsWorkoutList[index]['exercise6'],exercise7: armsWorkoutList[index]['exercise7'],exercise8: armsWorkoutList[index]['exercise8'],exercise9: armsWorkoutList[index]['exercise9'],exercise10: armsWorkoutList[index]['exercise10'],
          instructions1: armsWorkoutList[index]['instructions1'], instructions2:armsWorkoutList[index]['instructions2'],instructions3: armsWorkoutList[index]['instructions3'],instructions4: armsWorkoutList[index]['instructions4'],instructions5: armsWorkoutList[index]['instructions5'],instructions6: armsWorkoutList[index]['instructions6'],instructions7: armsWorkoutList[index]['instructions7'],instructions8: armsWorkoutList[index]['instructions8'],instructions9: armsWorkoutList[index]['instructions9'],instructions10: armsWorkoutList[index]['instructions10'],
        );
      },
        itemCount: armsWorkoutList.length,),
    );
  }
}
class Core extends StatefulWidget {
  const Core({Key? key}) : super(key: key);

  @override
  _CoreState createState() => _CoreState();
}

class _CoreState extends State<Core> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: const Text(
          "Core Exercises",
          textAlign: TextAlign.justify,
        ),
        backgroundColor: Colors.blueGrey,),
      body: ListView.builder(itemBuilder:  (context , index) {
        return  Workout(title: coreWorkoutList[index]['name'],  img: coreWorkoutList[index]['image'], description: coreWorkoutList[index]['description'],
          gif1: coreWorkoutList[index]['gif1'],gif2: coreWorkoutList[index]['gif2'],gif3: coreWorkoutList[index]['gif3'],gif4: coreWorkoutList[index]['gif4'],gif5: coreWorkoutList[index]['gif5'],gif6: coreWorkoutList[index]['gif6'],gif7: coreWorkoutList[index]['gif7'],gif8: coreWorkoutList[index]['gif8'],gif9: coreWorkoutList[index]['gif9'],gif10: coreWorkoutList[index]['gif10'],
          exercise1: coreWorkoutList[index]['exercise1'], exercise2: coreWorkoutList[index]['exercise2'],exercise3: coreWorkoutList[index]['exercise3'],exercise4: coreWorkoutList[index]['exercise4'],exercise5: coreWorkoutList[index]['exercise5'],exercise6: coreWorkoutList[index]['exercise6'],exercise7: coreWorkoutList[index]['exercise7'],exercise8: coreWorkoutList[index]['exercise8'],exercise9: coreWorkoutList[index]['exercise9'],exercise10: coreWorkoutList[index]['exercise10'],
          instructions1: coreWorkoutList[index]['instructions1'], instructions2:coreWorkoutList[index]['instructions2'],instructions3: coreWorkoutList[index]['instructions3'],instructions4: coreWorkoutList[index]['instructions4'],instructions5: coreWorkoutList[index]['instructions5'],instructions6: coreWorkoutList[index]['instructions6'],instructions7: coreWorkoutList[index]['instructions7'],instructions8: coreWorkoutList[index]['instructions8'],instructions9: coreWorkoutList[index]['instructions9'],instructions10: coreWorkoutList[index]['instructions10'],
        );
      },
        itemCount: coreWorkoutList.length,),
    );
  }
}
class FullBody extends StatefulWidget {
  const FullBody({Key? key}) : super(key: key);

  @override
  _FullBodyState createState() => _FullBodyState();
}

class _FullBodyState extends State<FullBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: const Text(
          "Full Body Exercises",
          textAlign: TextAlign.justify,
        ),
        backgroundColor: Colors.blueGrey,),
      body: ListView.builder(itemBuilder:  (context , index) {
        return  Workout(title: fullBodyWorkoutList[index]['name'],  img: fullBodyWorkoutList[index]['image'], description: fullBodyWorkoutList[index]['description'],
          gif1: fullBodyWorkoutList[index]['gif1'],gif2: fullBodyWorkoutList[index]['gif2'],gif3: fullBodyWorkoutList[index]['gif3'],gif4: fullBodyWorkoutList[index]['gif4'],gif5: fullBodyWorkoutList[index]['gif5'],gif6: fullBodyWorkoutList[index]['gif6'],gif7: fullBodyWorkoutList[index]['gif7'],gif8: fullBodyWorkoutList[index]['gif8'],gif9: fullBodyWorkoutList[index]['gif9'],gif10: fullBodyWorkoutList[index]['gif10'],
          exercise1: fullBodyWorkoutList[index]['exercise1'], exercise2: fullBodyWorkoutList[index]['exercise2'],exercise3: fullBodyWorkoutList[index]['exercise3'],exercise4: fullBodyWorkoutList[index]['exercise4'],exercise5: fullBodyWorkoutList[index]['exercise5'],exercise6: fullBodyWorkoutList[index]['exercise6'],exercise7: fullBodyWorkoutList[index]['exercise7'],exercise8: fullBodyWorkoutList[index]['exercise8'],exercise9: fullBodyWorkoutList[index]['exercise9'],exercise10: fullBodyWorkoutList[index]['exercise10'],
          instructions1: fullBodyWorkoutList[index]['instructions1'], instructions2:fullBodyWorkoutList[index]['instructions2'],instructions3: fullBodyWorkoutList[index]['instructions3'],instructions4: fullBodyWorkoutList[index]['instructions4'],instructions5: fullBodyWorkoutList[index]['instructions5'],instructions6: fullBodyWorkoutList[index]['instructions6'],instructions7: fullBodyWorkoutList[index]['instructions7'],instructions8: fullBodyWorkoutList[index]['instructions8'],instructions9: fullBodyWorkoutList[index]['instructions9'],instructions10: fullBodyWorkoutList[index]['instructions10'],
        );
      },
        itemCount: fullBodyWorkoutList.length,),
    );
  }
}
class Back extends StatefulWidget {
  const Back({Key? key}) : super(key: key);

  @override
  _BackState createState() => _BackState();
}

class _BackState extends State<Back> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
        title: const Text(
          "Back Exercises",
          textAlign: TextAlign.justify,
        ),
        backgroundColor: Colors.blueGrey,),
      body: ListView.builder(itemBuilder:  (context , index) {
        return  Workout(title: backWorkoutList[index]['name'],  img: backWorkoutList[index]['image'], description: backWorkoutList[index]['description'],
          gif1: backWorkoutList[index]['gif1'],gif2: backWorkoutList[index]['gif2'],gif3: backWorkoutList[index]['gif3'],gif4: backWorkoutList[index]['gif4'],gif5: backWorkoutList[index]['gif5'],gif6: backWorkoutList[index]['gif6'],gif7: backWorkoutList[index]['gif7'],gif8: backWorkoutList[index]['gif8'],gif9: backWorkoutList[index]['gif9'],gif10: backWorkoutList[index]['gif10'],
          exercise1: backWorkoutList[index]['exercise1'], exercise2: backWorkoutList[index]['exercise2'],exercise3: backWorkoutList[index]['exercise3'],exercise4: backWorkoutList[index]['exercise4'],exercise5: backWorkoutList[index]['exercise5'],exercise6: backWorkoutList[index]['exercise6'],exercise7: backWorkoutList[index]['exercise7'],exercise8: backWorkoutList[index]['exercise8'],exercise9: backWorkoutList[index]['exercise9'],exercise10: backWorkoutList[index]['exercise10'],
          instructions1: backWorkoutList[index]['instructions1'], instructions2:backWorkoutList[index]['instructions2'],instructions3: backWorkoutList[index]['instructions3'],instructions4: backWorkoutList[index]['instructions4'],instructions5: backWorkoutList[index]['instructions5'],instructions6: backWorkoutList[index]['instructions6'],instructions7: backWorkoutList[index]['instructions7'],instructions8: backWorkoutList[index]['instructions8'],instructions9: backWorkoutList[index]['instructions9'],instructions10: backWorkoutList[index]['instructions10'],
        );
      },
        itemCount: backWorkoutList.length,),
    );
  }
}
class Stretching extends StatefulWidget {
  const Stretching({Key? key}) : super(key: key);

  @override
  _StretchingState createState() => _StretchingState();
}

class _StretchingState extends State<Stretching> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
        title: const Text(
          "Stretching Exercises",
          textAlign: TextAlign.justify,
        ),
        backgroundColor: Colors.blueGrey,),
      body: ListView.builder(itemBuilder:  (context , index) {
        return  Workout(title: stretchingWorkoutList[index]['name'],  img: stretchingWorkoutList[index]['image'], description: stretchingWorkoutList[index]['description'],
          gif1: stretchingWorkoutList[index]['gif1'],gif2: stretchingWorkoutList[index]['gif2'],gif3: stretchingWorkoutList[index]['gif3'],gif4: stretchingWorkoutList[index]['gif4'],gif5: stretchingWorkoutList[index]['gif5'],gif6: stretchingWorkoutList[index]['gif6'],gif7: stretchingWorkoutList[index]['gif7'],gif8: stretchingWorkoutList[index]['gif8'],gif9: stretchingWorkoutList[index]['gif9'],gif10: stretchingWorkoutList[index]['gif10'],
          exercise1: stretchingWorkoutList[index]['exercise1'], exercise2: stretchingWorkoutList[index]['exercise2'],exercise3: stretchingWorkoutList[index]['exercise3'],exercise4: stretchingWorkoutList[index]['exercise4'],exercise5: stretchingWorkoutList[index]['exercise5'],exercise6: stretchingWorkoutList[index]['exercise6'],exercise7: stretchingWorkoutList[index]['exercise7'],exercise8: stretchingWorkoutList[index]['exercise8'],exercise9: stretchingWorkoutList[index]['exercise9'],exercise10: stretchingWorkoutList[index]['exercise10'],
          instructions1: stretchingWorkoutList[index]['instructions1'], instructions2:stretchingWorkoutList[index]['instructions2'],instructions3: stretchingWorkoutList[index]['instructions3'],instructions4: stretchingWorkoutList[index]['instructions4'],instructions5: stretchingWorkoutList[index]['instructions5'],instructions6: stretchingWorkoutList[index]['instructions6'],instructions7: stretchingWorkoutList[index]['instructions7'],instructions8: stretchingWorkoutList[index]['instructions8'],instructions9: stretchingWorkoutList[index]['instructions9'],instructions10: stretchingWorkoutList[index]['instructions10'],
        );
      },
        itemCount: stretchingWorkoutList.length,),
    );
  }
}
class Beginner extends StatefulWidget {
  const Beginner({Key? key}) : super(key: key);

  @override
  _BeginnerState createState() => _BeginnerState();
}

class _BeginnerState extends State<Beginner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: const Text(
          "Beginner Exercises",
          textAlign: TextAlign.justify,
        ),
        backgroundColor: Colors.blueGrey,),
      body: ListView.builder(itemBuilder:  (context , index) {
        return  Workout(title: beginnerWorkoutList[index]['name'],  img: beginnerWorkoutList[index]['image'], description: beginnerWorkoutList[index]['description'],
          gif1: beginnerWorkoutList[index]['gif1'],gif2: beginnerWorkoutList[index]['gif2'],gif3: beginnerWorkoutList[index]['gif3'],gif4: beginnerWorkoutList[index]['gif4'],gif5: beginnerWorkoutList[index]['gif5'],gif6: beginnerWorkoutList[index]['gif6'],gif7: beginnerWorkoutList[index]['gif7'],gif8: beginnerWorkoutList[index]['gif8'],gif9: beginnerWorkoutList[index]['gif9'],gif10: beginnerWorkoutList[index]['gif10'],
          exercise1: beginnerWorkoutList[index]['exercise1'], exercise2: beginnerWorkoutList[index]['exercise2'],exercise3: beginnerWorkoutList[index]['exercise3'],exercise4: beginnerWorkoutList[index]['exercise4'],exercise5: beginnerWorkoutList[index]['exercise5'],exercise6: beginnerWorkoutList[index]['exercise6'],exercise7: beginnerWorkoutList[index]['exercise7'],exercise8: beginnerWorkoutList[index]['exercise8'],exercise9: beginnerWorkoutList[index]['exercise9'],exercise10: beginnerWorkoutList[index]['exercise10'],
          instructions1: beginnerWorkoutList[index]['instructions1'], instructions2:beginnerWorkoutList[index]['instructions2'],instructions3: beginnerWorkoutList[index]['instructions3'],instructions4: beginnerWorkoutList[index]['instructions4'],instructions5: beginnerWorkoutList[index]['instructions5'],instructions6: beginnerWorkoutList[index]['instructions6'],instructions7: beginnerWorkoutList[index]['instructions7'],instructions8: beginnerWorkoutList[index]['instructions8'],instructions9: beginnerWorkoutList[index]['instructions9'],instructions10: beginnerWorkoutList[index]['instructions10'],
        );
      },
        itemCount: beginnerWorkoutList.length,),
    );
  }
}
class Intermediate extends StatefulWidget {
  const Intermediate({Key? key}) : super(key: key);

  @override
  _IntermediateState createState() => _IntermediateState();
}

class _IntermediateState extends State<Intermediate> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
        title: const Text(
          "Intermediate Exercises",
          textAlign: TextAlign.justify,
        ),
        backgroundColor: Colors.blueGrey,),
      body: ListView.builder(itemBuilder:  (context , index) {
        return  Workout(title: intermediateWorkoutList[index]['name'],  img: intermediateWorkoutList[index]['image'], description: intermediateWorkoutList[index]['description'],
          gif1: intermediateWorkoutList[index]['gif1'],gif2: intermediateWorkoutList[index]['gif2'],gif3: intermediateWorkoutList[index]['gif3'],gif4: intermediateWorkoutList[index]['gif4'],gif5: intermediateWorkoutList[index]['gif5'],gif6: intermediateWorkoutList[index]['gif6'],gif7: intermediateWorkoutList[index]['gif7'],gif8: intermediateWorkoutList[index]['gif8'],gif9: intermediateWorkoutList[index]['gif9'],gif10: intermediateWorkoutList[index]['gif10'],
          exercise1: intermediateWorkoutList[index]['exercise1'], exercise2: intermediateWorkoutList[index]['exercise2'],exercise3: intermediateWorkoutList[index]['exercise3'],exercise4: intermediateWorkoutList[index]['exercise4'],exercise5: intermediateWorkoutList[index]['exercise5'],exercise6: intermediateWorkoutList[index]['exercise6'],exercise7: intermediateWorkoutList[index]['exercise7'],exercise8: intermediateWorkoutList[index]['exercise8'],exercise9: intermediateWorkoutList[index]['exercise9'],exercise10: intermediateWorkoutList[index]['exercise10'],
          instructions1: intermediateWorkoutList[index]['instructions1'], instructions2:intermediateWorkoutList[index]['instructions2'],instructions3: intermediateWorkoutList[index]['instructions3'],instructions4: intermediateWorkoutList[index]['instructions4'],instructions5: intermediateWorkoutList[index]['instructions5'],instructions6: intermediateWorkoutList[index]['instructions6'],instructions7: intermediateWorkoutList[index]['instructions7'],instructions8: intermediateWorkoutList[index]['instructions8'],instructions9: intermediateWorkoutList[index]['instructions9'],instructions10: intermediateWorkoutList[index]['instructions10'],
        );
      },
        itemCount: intermediateWorkoutList.length,),
    );
  }
}

class Advanced extends StatefulWidget {
  const Advanced({Key? key}) : super(key: key);

  @override
  _AdvancedState createState() => _AdvancedState();
}

class _AdvancedState extends State<Advanced> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
        title: const Text(
          "Advanced Exercises",
          textAlign: TextAlign.justify,
        ),
        backgroundColor: Colors.blueGrey,),
      body: ListView.builder(itemBuilder:  (context , index) {
        return  Workout(title: advancedWorkoutList[index]['name'],  img: advancedWorkoutList[index]['image'], description: advancedWorkoutList[index]['description'],
          gif1: advancedWorkoutList[index]['gif1'],gif2: advancedWorkoutList[index]['gif2'],gif3: advancedWorkoutList[index]['gif3'],gif4: advancedWorkoutList[index]['gif4'],gif5: advancedWorkoutList[index]['gif5'],gif6: advancedWorkoutList[index]['gif6'],gif7: advancedWorkoutList[index]['gif7'],gif8: advancedWorkoutList[index]['gif8'],gif9: advancedWorkoutList[index]['gif9'],gif10: advancedWorkoutList[index]['gif10'],
          exercise1: advancedWorkoutList[index]['exercise1'], exercise2: advancedWorkoutList[index]['exercise2'],exercise3: advancedWorkoutList[index]['exercise3'],exercise4: advancedWorkoutList[index]['exercise4'],exercise5: advancedWorkoutList[index]['exercise5'],exercise6: advancedWorkoutList[index]['exercise6'],exercise7: advancedWorkoutList[index]['exercise7'],exercise8: advancedWorkoutList[index]['exercise8'],exercise9: advancedWorkoutList[index]['exercise9'],exercise10: advancedWorkoutList[index]['exercise10'],
          instructions1: advancedWorkoutList[index]['instructions1'], instructions2:advancedWorkoutList[index]['instructions2'],instructions3: advancedWorkoutList[index]['instructions3'],instructions4: advancedWorkoutList[index]['instructions4'],instructions5: advancedWorkoutList[index]['instructions5'],instructions6: advancedWorkoutList[index]['instructions6'],instructions7: advancedWorkoutList[index]['instructions7'],instructions8: advancedWorkoutList[index]['instructions8'],instructions9: advancedWorkoutList[index]['instructions9'],instructions10: advancedWorkoutList[index]['instructions10'],
        );
      },
        itemCount: advancedWorkoutList.length,),
    );
  }
}



class Workout extends StatelessWidget {
  //const ({Key? key})
  final String title;
  final String? img;
  final String? description;
  final String gif1;
  final String gif2;
  final String gif3;
  final String gif4;
  final String gif5;
  final String gif6;
  final String gif7;
  final String gif8;
  final String gif9;
  final String gif10;
  final String exercise1;
  final String exercise2;
  final String exercise3;
  final String exercise4;
  final String exercise5;
  final String exercise6;
  final String exercise7;
  final String exercise8;
  final String exercise9;
  final String exercise10;
  final String instructions1;
  final String instructions2;
  final String instructions3;
  final String instructions4;
  final String instructions5;
  final String instructions6;
  final String instructions7;
  final String instructions8;
  final String instructions9;
  final String instructions10;



  const Workout({
    Key? key,
    required this.title,
    required this.img,
    required this.description,
    required this.gif1,
    required this.gif2,
    required this.gif3,
    required this.gif4,
    required this.gif5,
    required this.gif6,
    required this.gif7,
    required this.gif8,
    required this.gif9,
    required this.gif10,
    required this.exercise1,
    required this.exercise2,
    required this.exercise3,
    required this.exercise4,
    required this.exercise5,
    required this.exercise6,
    required this.exercise7,
    required this.exercise8,
    required this.exercise9,
    required this.exercise10,
    required this.instructions1,
    required this.instructions2,
    required this.instructions3,
    required this.instructions4,
    required this.instructions5,
    required this.instructions6,
    required this.instructions7,
    required this.instructions8,
    required this.instructions9,
    required this.instructions10,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10 , bottom: 10),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context,
              WorkoutDetails.route_name,
              arguments: Workout( title: title,
                gif1: gif1, gif2:  gif2, gif3: gif3 , gif4: gif4, gif5: gif5, gif6: gif6, gif7: gif7, gif8: gif8, gif9: gif9, gif10: gif10,
                exercise1: exercise1 ,exercise2: exercise2 ,exercise3: exercise3 ,exercise4: exercise4 ,exercise5: exercise5 ,exercise6:exercise6 ,exercise7: exercise7 ,exercise8: exercise8, exercise9: exercise9 ,exercise10: exercise10,
                instructions1: instructions1 ,instructions2: instructions2 ,instructions3: instructions3 ,instructions4: instructions4 ,instructions5: instructions5 ,instructions6: instructions6 ,instructions7: instructions7 ,instructions8: instructions8 ,instructions9: instructions9 ,instructions10: instructions10 ,
                description: '', img: '',

              ));
        },
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30),),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                offset: Offset(5, 5),
                blurRadius: 20,
                color: Colors.grey,
              ),
            ],
          ),
          margin:const EdgeInsets.only(left: 18 , right: 18),
          child: Row(
            children:  [
              SizedBox(
                height: 120,
                width: 150,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Image.asset( img!)),
              ),
              const SizedBox(width: 20) ,
              Column(
                children: [
                  GradientText(title,
                      style: const TextStyle(color: Colors.blueGrey,
                          fontSize: 21,
                          fontWeight: FontWeight.bold),
                      colors : const [
                        Colors.blueGrey,
                        Colors.deepOrangeAccent
                      ]),
                  Text(description!, style: const TextStyle(fontSize: 18),)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

