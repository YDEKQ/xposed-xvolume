.class Lde/hansserver/xvolume/XVolume$1;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "XVolume.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/hansserver/xvolume/XVolume;->handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/hansserver/xvolume/XVolume;

.field private final synthetic val$classloader:Ljava/lang/ClassLoader;


# direct methods
.method constructor <init>(Lde/hansserver/xvolume/XVolume;Ljava/lang/ClassLoader;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lde/hansserver/xvolume/XVolume$1;->this$0:Lde/hansserver/xvolume/XVolume;

    iput-object p2, p0, Lde/hansserver/xvolume/XVolume$1;->val$classloader:Ljava/lang/ClassLoader;

    .line 29
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected beforeHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 16
    .param p1, "param"    # Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 34
    move-object/from16 v0, p1

    iget-object v11, v0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    .line 35
    .local v11, "service":Ljava/lang/Object;
    const-string v13, "mContext"

    invoke-static {v11, v13}, Lde/robv/android/xposed/XposedHelpers;->getObjectField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    .line 36
    .local v5, "context":Landroid/content/Context;
    sget-object v13, Lde/hansserver/xvolume/XVolume;->PREF_FILE:Ljava/lang/String;

    const/4 v14, 0x0

    invoke-virtual {v5, v13, v14}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v7

    .line 37
    .local v7, "pContext":Landroid/content/Context;
    sget-object v13, Lde/hansserver/xvolume/XVolume;->PREF_FILE:Ljava/lang/String;

    const/4 v14, 0x1

    invoke-virtual {v7, v13, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 39
    .local v10, "prefs":Landroid/content/SharedPreferences;
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "CLAZZ: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v14, v0, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lde/robv/android/xposed/XposedBridge;->log(Ljava/lang/String;)V

    .line 42
    sget-object v13, Lde/hansserver/xvolume/MainActivity;->PREF_MEDIA_VOL:Ljava/lang/String;

    const/16 v14, 0xf

    invoke-interface {v10, v13, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 43
    .local v6, "mediaVol":I
    sget-object v13, Lde/hansserver/xvolume/MainActivity;->PREF_CALL_VOL:Ljava/lang/String;

    const/16 v14, 0xf

    invoke-interface {v10, v13, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 45
    .local v3, "callVol":I
    const-string v13, "android.media.AudioService"

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/hansserver/xvolume/XVolume$1;->val$classloader:Ljava/lang/ClassLoader;

    invoke-static {v13, v14}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v12

    .line 46
    .local v12, "serviceClazz":Ljava/lang/Class;
    const-string v13, "android.view.VolumePanel"

    move-object/from16 v0, p0

    iget-object v14, v0, Lde/hansserver/xvolume/XVolume$1;->val$classloader:Ljava/lang/ClassLoader;

    invoke-static {v13, v14}, Lde/robv/android/xposed/XposedHelpers;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v9

    .line 48
    .local v9, "pannelClazz":Ljava/lang/Class;
    const-string v13, "MAX_STREAM_VOLUME"

    invoke-static {v12, v13}, Lde/robv/android/xposed/XposedHelpers;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 49
    .local v2, "arrayField":Ljava/lang/reflect/Field;
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 50
    invoke-virtual {v2, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 51
    .local v1, "array":[I
    const/4 v13, 0x3

    aput v6, v1, v13

    .line 52
    const/4 v13, 0x0

    aput v3, v1, v13

    .line 53
    invoke-virtual {v2, v11, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 55
    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    const-class v15, Landroid/content/Context;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    aput-object v12, v13, v14

    invoke-static {v9, v13}, Lde/robv/android/xposed/XposedHelpers;->findConstructorExact(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 56
    .local v4, "con":Ljava/lang/reflect/Constructor;
    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v5, v13, v14

    const/4 v14, 0x1

    aput-object v11, v13, v14

    invoke-virtual {v4, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 57
    .local v8, "panel":Ljava/lang/Object;
    const-string v13, "mVolumePanel"

    invoke-static {v11, v13, v8}, Lde/robv/android/xposed/XposedHelpers;->setObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    return-void
.end method
