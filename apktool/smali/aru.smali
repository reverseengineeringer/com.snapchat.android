.class public final Laru;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laru$a;
    }
.end annotation


# instance fields
.field public final a:Lapz;

.field public b:Landroid/view/View;

.field public c:Z


# direct methods
.method public constructor <init>(Lapz;)V
    .locals 0
    .param p1    # Lapz;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Laru;->a:Lapz;

    .line 28
    return-void
.end method

.method public static a(IZ)I
    .locals 3

    .prologue
    .line 135
    rem-int/lit8 v0, p0, 0xa

    packed-switch v0, :pswitch_data_0

    .line 161
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid input: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :pswitch_0
    const v0, 0x7f0200cf

    .line 159
    :goto_0
    return v0

    .line 139
    :pswitch_1
    if-eqz p1, :cond_0

    .line 140
    const v0, 0x7f0200d1

    goto :goto_0

    .line 142
    :cond_0
    const v0, 0x7f0200d0

    goto :goto_0

    .line 145
    :pswitch_2
    const v0, 0x7f0200d2

    goto :goto_0

    .line 147
    :pswitch_3
    const v0, 0x7f0200d3

    goto :goto_0

    .line 149
    :pswitch_4
    const v0, 0x7f0200d4

    goto :goto_0

    .line 151
    :pswitch_5
    const v0, 0x7f0200d5

    goto :goto_0

    .line 153
    :pswitch_6
    const v0, 0x7f0200d6

    goto :goto_0

    .line 155
    :pswitch_7
    const v0, 0x7f0200d7

    goto :goto_0

    .line 157
    :pswitch_8
    const v0, 0x7f0200d8

    goto :goto_0

    .line 159
    :pswitch_9
    const v0, 0x7f0200d9

    goto :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
