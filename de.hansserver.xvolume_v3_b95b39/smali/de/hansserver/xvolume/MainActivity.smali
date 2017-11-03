.class public Lde/hansserver/xvolume/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# static fields
.field public static PREF_CALL_VOL:Ljava/lang/String;

.field public static PREF_FILE:Ljava/lang/String;

.field public static PREF_MEDIA_VOL:Ljava/lang/String;


# instance fields
.field private callSeek:Landroid/widget/SeekBar;

.field private callVol:I

.field private callVwr:Landroid/widget/TextView;

.field private exitBtn:Landroid/widget/Button;

.field private mediaSeek:Landroid/widget/SeekBar;

.field private mediaVol:I

.field private mediaVwr:Landroid/widget/TextView;

.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "de.hansserver.xvolume"

    sput-object v0, Lde/hansserver/xvolume/MainActivity;->PREF_FILE:Ljava/lang/String;

    .line 20
    const-string v0, "_media"

    sput-object v0, Lde/hansserver/xvolume/MainActivity;->PREF_MEDIA_VOL:Ljava/lang/String;

    .line 21
    const-string v0, "_call"

    sput-object v0, Lde/hansserver/xvolume/MainActivity;->PREF_CALL_VOL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 23
    iput-object v0, p0, Lde/hansserver/xvolume/MainActivity;->mediaSeek:Landroid/widget/SeekBar;

    .line 24
    iput-object v0, p0, Lde/hansserver/xvolume/MainActivity;->callSeek:Landroid/widget/SeekBar;

    .line 25
    iput-object v0, p0, Lde/hansserver/xvolume/MainActivity;->mediaVwr:Landroid/widget/TextView;

    .line 26
    iput-object v0, p0, Lde/hansserver/xvolume/MainActivity;->callVwr:Landroid/widget/TextView;

    .line 27
    iput-object v0, p0, Lde/hansserver/xvolume/MainActivity;->exitBtn:Landroid/widget/Button;

    .line 31
    iput v1, p0, Lde/hansserver/xvolume/MainActivity;->mediaVol:I

    .line 32
    iput v1, p0, Lde/hansserver/xvolume/MainActivity;->callVol:I

    .line 17
    return-void
.end method

.method static synthetic access$0(Lde/hansserver/xvolume/MainActivity;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lde/hansserver/xvolume/MainActivity;->mediaVol:I

    return v0
.end method

.method static synthetic access$1(Lde/hansserver/xvolume/MainActivity;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lde/hansserver/xvolume/MainActivity;->callVol:I

    return v0
.end method

.method static synthetic access$2(Lde/hansserver/xvolume/MainActivity;)V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0}, Lde/hansserver/xvolume/MainActivity;->closeThis()V

    return-void
.end method

.method static synthetic access$3(Lde/hansserver/xvolume/MainActivity;I)V
    .locals 0

    .prologue
    .line 31
    iput p1, p0, Lde/hansserver/xvolume/MainActivity;->mediaVol:I

    return-void
.end method

.method static synthetic access$4(Lde/hansserver/xvolume/MainActivity;)V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Lde/hansserver/xvolume/MainActivity;->updateValueVwr()V

    return-void
.end method

.method static synthetic access$5(Lde/hansserver/xvolume/MainActivity;I)V
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lde/hansserver/xvolume/MainActivity;->callVol:I

    return-void
.end method

.method private closeThis()V
    .locals 0

    .prologue
    .line 168
    invoke-virtual {p0}, Lde/hansserver/xvolume/MainActivity;->finish()V

    .line 169
    return-void
.end method

.method private updateSeekBar()V
    .locals 2

    .prologue
    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, "val":I
    iget v1, p0, Lde/hansserver/xvolume/MainActivity;->mediaVol:I

    sparse-switch v1, :sswitch_data_0

    .line 153
    :goto_0
    iget-object v1, p0, Lde/hansserver/xvolume/MainActivity;->mediaSeek:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 155
    const/4 v0, 0x0

    .line 156
    iget v1, p0, Lde/hansserver/xvolume/MainActivity;->callVol:I

    sparse-switch v1, :sswitch_data_1

    .line 164
    :goto_1
    iget-object v1, p0, Lde/hansserver/xvolume/MainActivity;->callSeek:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 165
    return-void

    .line 147
    :sswitch_0
    const/4 v0, 0x1

    .line 148
    goto :goto_0

    .line 150
    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 158
    :sswitch_2
    const/4 v0, 0x1

    .line 159
    goto :goto_1

    .line 161
    :sswitch_3
    const/4 v0, 0x2

    goto :goto_1

    .line 145
    nop

    :sswitch_data_0
    .sparse-switch
        0x1e -> :sswitch_0
        0x2d -> :sswitch_1
    .end sparse-switch

    .line 156
    :sswitch_data_1
    .sparse-switch
        0x1e -> :sswitch_2
        0x2d -> :sswitch_3
    .end sparse-switch
.end method

.method private updateValueVwr()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lde/hansserver/xvolume/MainActivity;->mediaVwr:Landroid/widget/TextView;

    iget v1, p0, Lde/hansserver/xvolume/MainActivity;->mediaVol:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lde/hansserver/xvolume/MainActivity;->callVwr:Landroid/widget/TextView;

    iget v1, p0, Lde/hansserver/xvolume/MainActivity;->callVol:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0xf

    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const/high16 v1, 0x7f030000

    invoke-virtual {p0, v1}, Lde/hansserver/xvolume/MainActivity;->setContentView(I)V

    .line 41
    const v1, 0x7f080002

    invoke-virtual {p0, v1}, Lde/hansserver/xvolume/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lde/hansserver/xvolume/MainActivity;->mediaSeek:Landroid/widget/SeekBar;

    .line 42
    const v1, 0x7f080003

    invoke-virtual {p0, v1}, Lde/hansserver/xvolume/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lde/hansserver/xvolume/MainActivity;->mediaVwr:Landroid/widget/TextView;

    .line 45
    const v1, 0x7f080006

    invoke-virtual {p0, v1}, Lde/hansserver/xvolume/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lde/hansserver/xvolume/MainActivity;->callSeek:Landroid/widget/SeekBar;

    .line 46
    const v1, 0x7f080005

    invoke-virtual {p0, v1}, Lde/hansserver/xvolume/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lde/hansserver/xvolume/MainActivity;->callVwr:Landroid/widget/TextView;

    .line 48
    const/high16 v1, 0x7f080000

    invoke-virtual {p0, v1}, Lde/hansserver/xvolume/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lde/hansserver/xvolume/MainActivity;->exitBtn:Landroid/widget/Button;

    .line 50
    sget-object v1, Lde/hansserver/xvolume/MainActivity;->PREF_FILE:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lde/hansserver/xvolume/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lde/hansserver/xvolume/MainActivity;->prefs:Landroid/content/SharedPreferences;

    .line 52
    iget-object v1, p0, Lde/hansserver/xvolume/MainActivity;->prefs:Landroid/content/SharedPreferences;

    sget-object v2, Lde/hansserver/xvolume/MainActivity;->PREF_MEDIA_VOL:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lde/hansserver/xvolume/MainActivity;->mediaVol:I

    .line 53
    iget-object v1, p0, Lde/hansserver/xvolume/MainActivity;->prefs:Landroid/content/SharedPreferences;

    sget-object v2, Lde/hansserver/xvolume/MainActivity;->PREF_CALL_VOL:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lde/hansserver/xvolume/MainActivity;->callVol:I

    .line 55
    iget-object v1, p0, Lde/hansserver/xvolume/MainActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 56
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lde/hansserver/xvolume/MainActivity;->exitBtn:Landroid/widget/Button;

    new-instance v2, Lde/hansserver/xvolume/MainActivity$1;

    invoke-direct {v2, p0, v0}, Lde/hansserver/xvolume/MainActivity$1;-><init>(Lde/hansserver/xvolume/MainActivity;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v1, p0, Lde/hansserver/xvolume/MainActivity;->mediaSeek:Landroid/widget/SeekBar;

    new-instance v2, Lde/hansserver/xvolume/MainActivity$2;

    invoke-direct {v2, p0}, Lde/hansserver/xvolume/MainActivity$2;-><init>(Lde/hansserver/xvolume/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 97
    iget-object v1, p0, Lde/hansserver/xvolume/MainActivity;->callSeek:Landroid/widget/SeekBar;

    new-instance v2, Lde/hansserver/xvolume/MainActivity$3;

    invoke-direct {v2, p0}, Lde/hansserver/xvolume/MainActivity$3;-><init>(Lde/hansserver/xvolume/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 126
    invoke-direct {p0}, Lde/hansserver/xvolume/MainActivity;->updateSeekBar()V

    .line 127
    invoke-direct {p0}, Lde/hansserver/xvolume/MainActivity;->updateValueVwr()V

    .line 128
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 133
    invoke-virtual {p0}, Lde/hansserver/xvolume/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f070000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 135
    const/4 v0, 0x1

    return v0
.end method
