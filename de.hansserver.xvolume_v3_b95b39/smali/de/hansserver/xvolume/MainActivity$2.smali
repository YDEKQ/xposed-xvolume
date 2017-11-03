.class Lde/hansserver/xvolume/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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


# direct methods
.method constructor <init>(Lde/hansserver/xvolume/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lde/hansserver/xvolume/MainActivity$2;->this$0:Lde/hansserver/xvolume/MainActivity;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 81
    packed-switch p2, :pswitch_data_0

    .line 92
    :goto_0
    iget-object v0, p0, Lde/hansserver/xvolume/MainActivity$2;->this$0:Lde/hansserver/xvolume/MainActivity;

    invoke-static {v0}, Lde/hansserver/xvolume/MainActivity;->access$4(Lde/hansserver/xvolume/MainActivity;)V

    .line 94
    return-void

    .line 83
    :pswitch_0
    iget-object v0, p0, Lde/hansserver/xvolume/MainActivity$2;->this$0:Lde/hansserver/xvolume/MainActivity;

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lde/hansserver/xvolume/MainActivity;->access$3(Lde/hansserver/xvolume/MainActivity;I)V

    goto :goto_0

    .line 86
    :pswitch_1
    iget-object v0, p0, Lde/hansserver/xvolume/MainActivity$2;->this$0:Lde/hansserver/xvolume/MainActivity;

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Lde/hansserver/xvolume/MainActivity;->access$3(Lde/hansserver/xvolume/MainActivity;I)V

    goto :goto_0

    .line 89
    :pswitch_2
    iget-object v0, p0, Lde/hansserver/xvolume/MainActivity$2;->this$0:Lde/hansserver/xvolume/MainActivity;

    const/16 v1, 0x2d

    invoke-static {v0, v1}, Lde/hansserver/xvolume/MainActivity;->access$3(Lde/hansserver/xvolume/MainActivity;I)V

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 77
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 72
    return-void
.end method
