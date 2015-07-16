.class public final Laty;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laty$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ConversationMessageUtils"


# direct methods
.method public static a(Lbji$a;Ljava/lang/String;Ljava/util/List;Lbjy;)Lbil;
    .locals 2
    .param p0    # Lbji$a;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lbil;",
            ">(",
            "Lbji$a;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lbjy;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 127
    new-instance v0, Lbjb;

    invoke-direct {v0}, Lbjb;-><init>()V

    invoke-virtual {v0, p1}, Lbjb;->a(Ljava/lang/String;)Lbjb;

    move-result-object v0

    invoke-virtual {v0, p2}, Lbjb;->a(Ljava/util/List;)Lbjb;

    move-result-object v0

    invoke-virtual {v0, p3}, Lbjb;->b(Lbjy;)Lbjb;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Layg;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbjb;->b(Ljava/lang/String;)Lbjb;

    move-result-object v1

    .line 128
    invoke-static {p0}, Laty;->b(Lbji$a;)Lbji;

    move-result-object v0

    check-cast v0, Lbil;

    .line 129
    invoke-virtual {v0, v1}, Lbil;->a(Lbjb;)V

    .line 130
    return-object v0
.end method

.method public static a(Lbji$a;)Ljava/lang/Class;
    .locals 2
    .param p0    # Lbji$a;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbji$a;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lbji;",
            ">;"
        }
    .end annotation

    .annotation build Lr;
    .end annotation

    .prologue
    .line 87
    sget-object v0, Laty$1;->$SwitchMap$com$snapchat$soju$android$Message$Type:[I

    invoke-virtual {p0}, Lbji$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 121
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 89
    :pswitch_0
    const-class v0, Lbjr;

    goto :goto_0

    .line 91
    :pswitch_1
    const-class v0, Lbjk;

    goto :goto_0

    .line 93
    :pswitch_2
    const-class v0, Lbju;

    goto :goto_0

    .line 95
    :pswitch_3
    const-class v0, Lbif;

    goto :goto_0

    .line 97
    :pswitch_4
    const-class v0, Lbjt;

    goto :goto_0

    .line 99
    :pswitch_5
    const-class v0, Lbis;

    goto :goto_0

    .line 101
    :pswitch_6
    const-class v0, Lbjs;

    goto :goto_0

    .line 103
    :pswitch_7
    const-class v0, Lbim;

    goto :goto_0

    .line 105
    :pswitch_8
    const-class v0, Lbij;

    goto :goto_0

    .line 107
    :pswitch_9
    const-class v0, Lbik;

    goto :goto_0

    .line 109
    :pswitch_a
    const-class v0, Lbiq;

    goto :goto_0

    .line 111
    :pswitch_b
    const-class v0, Lbkc;

    goto :goto_0

    .line 113
    :pswitch_c
    const-class v0, Lbjp;

    goto :goto_0

    .line 115
    :pswitch_d
    const-class v0, Lbjq;

    goto :goto_0

    .line 117
    :pswitch_e
    const-class v0, Lbia;

    goto :goto_0

    .line 119
    :pswitch_f
    const-class v0, Lbib;

    goto :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_0
        :pswitch_2
        :pswitch_b
        :pswitch_3
        :pswitch_f
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private static a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p0    # Ljava/lang/Class;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 147
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 148
    instance-of v1, v2, Lbji;

    if-eqz v1, :cond_0

    .line 149
    move-object v0, v2

    check-cast v0, Lbji;

    move-object v1, v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lbji;->f(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 153
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static a(Lbji;)Z
    .locals 2
    .param p0    # Lbji;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 44
    sget-object v0, Laty$1;->$SwitchMap$com$snapchat$soju$android$Message$Type:[I

    invoke-virtual {p0}, Lbji;->j()Lbji$a;

    move-result-object v1

    invoke-virtual {v1}, Lbji$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 56
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 47
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Lbji$a;)Lbji;
    .locals 2
    .param p0    # Lbji$a;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lbji;",
            ">(",
            "Lbji$a;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 137
    invoke-static {p0}, Laty;->a(Lbji$a;)Ljava/lang/Class;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_0

    .line 139
    invoke-static {v0}, Laty;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbji;

    invoke-virtual {p0}, Lbji$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbji;->e(Ljava/lang/String;)Lbji;

    move-result-object v0

    .line 141
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Lbji;)Z
    .locals 2
    .param p0    # Lbji;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 65
    sget-object v0, Laty$1;->$SwitchMap$com$snapchat$soju$android$Message$Type:[I

    invoke-virtual {p0}, Lbji;->j()Lbji$a;

    move-result-object v1

    invoke-virtual {v1}, Lbji$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 77
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 68
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 65
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x7 -> :sswitch_0
    .end sparse-switch
.end method
