.class public Lde/hansserver/xvolume/RWValue;
.super Ljava/lang/Object;
.source "RWValue.java"


# static fields
.field private static file:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/xposed/xvolume"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lde/hansserver/xvolume/RWValue;->file:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVal()I
    .locals 5

    .prologue
    .line 14
    const/4 v3, -0x1

    .line 16
    .local v3, "val":I
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    sget-object v4, Lde/hansserver/xvolume/RWValue;->file:Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 17
    .local v2, "fr":Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 18
    .local v0, "br":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 19
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 20
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "fr":Ljava/io/FileReader;
    :goto_0
    return v3

    .line 21
    :catch_0
    move-exception v1

    .line 22
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setValue(I)V
    .locals 4
    .param p0, "val"    # I

    .prologue
    .line 29
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    sget-object v3, Lde/hansserver/xvolume/RWValue;->file:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 30
    .local v2, "fw":Ljava/io/FileWriter;
    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 31
    .local v0, "bw":Ljava/io/BufferedWriter;
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 33
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v2    # "fw":Ljava/io/FileWriter;
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v1

    .line 35
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
