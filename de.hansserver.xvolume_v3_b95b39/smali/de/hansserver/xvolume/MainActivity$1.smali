.class Lde/hansserver/xvolume/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/hansserver/xvolume/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/hansserver/xvolume/MainActivity;

.field private final synthetic val$editor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method constructor <init>(Lde/hansserver/xvolume/MainActivity;Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lde/hansserver/xvolume/MainActivity$1;->this$0:Lde/hansserver/xvolume/MainActivity;

    iput-object p2, p0, Lde/hansserver/xvolume/MainActivity$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 60
    iget-object v0, p0, Lde/hansserver/xvolume/MainActivity$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lde/hansserver/xvolume/MainActivity;->PREF_MEDIA_VOL:Ljava/lang/String;

    iget-object v2, p0, Lde/hansserver/xvolume/MainActivity$1;->this$0:Lde/hansserver/xvolume/MainActivity;

    invoke-static {v2}, Lde/hansserver/xvolume/MainActivity;->access$0(Lde/hansserver/xvolume/MainActivity;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 61
    iget-object v0, p0, Lde/hansserver/xvolume/MainActivity$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, Lde/hansserver/xvolume/MainActivity;->PREF_CALL_VOL:Ljava/lang/String;

    iget-object v2, p0, Lde/hansserver/xvolume/MainActivity$1;->this$0:Lde/hansserver/xvolume/MainActivity;

    invoke-static {v2}, Lde/hansserver/xvolume/MainActivity;->access$1(Lde/hansserver/xvolume/MainActivity;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 62
    iget-object v0, p0, Lde/hansserver/xvolume/MainActivity$1;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 63
    iget-object v0, p0, Lde/hansserver/xvolume/MainActivity$1;->this$0:Lde/hansserver/xvolume/MainActivity;

    invoke-static {v0}, Lde/hansserver/xvolume/MainActivity;->access$2(Lde/hansserver/xvolume/MainActivity;)V

    .line 64
    return-void
.end method
