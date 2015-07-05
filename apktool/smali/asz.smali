.class public final Lasz;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lasz$1;
    }
.end annotation


# direct methods
.method public static a(Lbii$a;Ljava/lang/String;Ljava/util/List;Lbix;)Lbhl;
    .locals 2
    .param p0    # Lbii$a;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lbhl;",
            ">(",
            "Lbii$a;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lbix;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 121
    new-instance v0, Lbib;

    invoke-direct {v0}, Lbib;-><init>()V

    invoke-virtual {v0, p1}, Lbib;->a(Ljava/lang/String;)Lbib;

    move-result-object v0

    invoke-virtual {v0, p2}, Lbib;->a(Ljava/util/List;)Lbib;

    move-result-object v0

    invoke-virtual {v0, p3}, Lbib;->b(Lbix;)Lbib;

    move-result-object v1

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Laxi;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lbib;->b(Ljava/lang/String;)Lbib;

    move-result-object v1

    .line 122
    invoke-static {p0}, Lasz;->b(Lbii$a;)Lbii;

    move-result-object v0

    check-cast v0, Lbhl;

    .line 123
    invoke-virtual {v0, v1}, Lbhl;->a(Lbib;)V

    .line 124
    return-object v0
.end method

.method public static a(Lbii$a;)Ljava/lang/Class;
    .locals 2
    .param p0    # Lbii$a;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbii$a;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lbii;",
            ">;"
        }
    .end annotation

    .annotation build Lr;
    .end annotation

    .prologue
    .line 83
    sget-object v0, Lasz$1;->$SwitchMap$com$snapchat$soju$android$Message$Type:[I

    invoke-virtual {p0}, Lbii$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 115
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 85
    :pswitch_0
    const-class v0, Lbir;

    goto :goto_0

    .line 87
    :pswitch_1
    const-class v0, Lbik;

    goto :goto_0

    .line 89
    :pswitch_2
    const-class v0, Lbit;

    goto :goto_0

    .line 91
    :pswitch_3
    const-class v0, Lbhf;

    goto :goto_0

    .line 93
    :pswitch_4
    const-class v0, Lbhs;

    goto :goto_0

    .line 95
    :pswitch_5
    const-class v0, Lbis;

    goto :goto_0

    .line 97
    :pswitch_6
    const-class v0, Lbhm;

    goto :goto_0

    .line 99
    :pswitch_7
    const-class v0, Lbhj;

    goto :goto_0

    .line 101
    :pswitch_8
    const-class v0, Lbhk;

    goto :goto_0

    .line 103
    :pswitch_9
    const-class v0, Lbhq;

    goto :goto_0

    .line 105
    :pswitch_a
    const-class v0, Lbjb;

    goto :goto_0

    .line 107
    :pswitch_b
    const-class v0, Lbip;

    goto :goto_0

    .line 109
    :pswitch_c
    const-class v0, Lbiq;

    goto :goto_0

    .line 111
    :pswitch_d
    const-class v0, Lbha;

    goto :goto_0

    .line 113
    :pswitch_e
    const-class v0, Lbhb;

    goto :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_0
        :pswitch_2
        :pswitch_a
        :pswitch_3
        :pswitch_e
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private static a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p0    # Ljava/lang/Class;
        .annotation build Lcgb;
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
    .line 141
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 142
    instance-of v1, v2, Lbii;

    if-eqz v1, :cond_0

    .line 143
    move-object v0, v2

    check-cast v0, Lbii;

    move-object v1, v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lbii;->f(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 151
    :cond_0
    :goto_0
    return-object v2

    .line 146
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    .line 151
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 148
    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method public static a(Lbii;)Z
    .locals 2
    .param p0    # Lbii;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 40
    sget-object v0, Lasz$1;->$SwitchMap$com$snapchat$soju$android$Message$Type:[I

    invoke-virtual {p0}, Lbii;->j()Lbii$a;

    move-result-object v1

    invoke-virtual {v1}, Lbii$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 52
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 43
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 40
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Lbii$a;)Lbii;
    .locals 2
    .param p0    # Lbii$a;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lbii;",
            ">(",
            "Lbii$a;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 131
    invoke-static {p0}, Lasz;->a(Lbii$a;)Ljava/lang/Class;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_0

    .line 133
    invoke-static {v0}, Lasz;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbii;

    invoke-virtual {p0}, Lbii$a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbii;->e(Ljava/lang/String;)Lbii;

    move-result-object v0

    .line 135
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Lbii;)Z
    .locals 2
    .param p0    # Lbii;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 61
    sget-object v0, Lasz$1;->$SwitchMap$com$snapchat$soju$android$Message$Type:[I

    invoke-virtual {p0}, Lbii;->j()Lbii$a;

    move-result-object v1

    invoke-virtual {v1}, Lbii$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 73
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 64
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 61
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x7 -> :sswitch_0
    .end sparse-switch
.end method
