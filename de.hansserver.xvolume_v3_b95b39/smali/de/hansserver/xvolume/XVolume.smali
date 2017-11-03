.class public Lde/hansserver/xvolume/XVolume;
.super Ljava/lang/Object;
.source "XVolume.java"

# interfaces
.implements Lde/robv/android/xposed/IXposedHookLoadPackage;


# static fields
.field public static PREF_FILE:Ljava/lang/String;

.field public static PREF_KEY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "de.hansserver.xvolume"

    sput-object v0, Lde/hansserver/xvolume/XVolume;->PREF_FILE:Ljava/lang/String;

    .line 19
    const-string v0, "volume"

    sput-object v0, Lde/hansserver/xvolume/XVolume;->PREF_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;)V
    .locals 7
    .param p1, "lpparam"    # Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 24
    iget-object v1, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->packageName:Ljava/lang/String;

    const-string v2, "android"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    :goto_0
    return-void

    .line 26
    :cond_0
    iget-object v0, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    .line 28
    .local v0, "classloader":Ljava/lang/ClassLoader;
    const-string v1, "android.media.AudioService"

    iget-object v2, p1, Lde/robv/android/xposed/callbacks/XC_LoadPackage$LoadPackageParam;->classLoader:Ljava/lang/ClassLoader;

    const-string v3, "createAudioSystemThread"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 29
    new-instance v6, Lde/hansserver/xvolume/XVolume$1;

    invoke-direct {v6, p0, v0}, Lde/hansserver/xvolume/XVolume$1;-><init>(Lde/hansserver/xvolume/XVolume;Ljava/lang/ClassLoader;)V

    aput-object v6, v4, v5

    .line 28
    invoke-static {v1, v2, v3, v4}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    goto :goto_0
.end method
