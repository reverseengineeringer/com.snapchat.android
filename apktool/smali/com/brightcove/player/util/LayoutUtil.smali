.class public Lcom/brightcove/player/util/LayoutUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSpecMode(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sparse-switch p0, :sswitch_data_0

    .line 41
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 29
    :sswitch_0
    const-string v0, "MeasureSpec.UNSPECIFIED"

    goto :goto_0

    .line 35
    :sswitch_1
    const-string v0, "MeasureSpec.AT_MOST"

    goto :goto_0

    .line 38
    :sswitch_2
    const-string v0, "MeasureSpec.EXACTLY"

    goto :goto_0

    .line 24
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method
