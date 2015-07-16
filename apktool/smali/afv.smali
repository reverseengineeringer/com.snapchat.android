.class public final Lafv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lns;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lns;

    invoke-direct {v0}, Lns;-><init>()V

    invoke-direct {p0, v0}, Lafv;-><init>(Lns;)V

    .line 47
    return-void
.end method

.method private constructor <init>(Lns;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lafv;->a:Lns;

    .line 52
    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 186
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isNumeric(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 190
    if-ltz v0, :cond_0

    invoke-static {}, Lcom/snapchat/android/ui/caption/CaptionTypeEnums;->values()[Lcom/snapchat/android/ui/caption/CaptionTypeEnums;

    move-result-object v1

    array-length v1, v1

    if-gt v0, v1, :cond_0

    .line 194
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static a(Laeb;IIII)V
    .locals 1

    .prologue
    .line 170
    if-nez p0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 174
    :cond_0
    int-to-float v0, p4

    iput v0, p0, Laeb;->i:F

    .line 175
    int-to-float v0, p3

    iput v0, p0, Laeb;->h:F

    .line 176
    int-to-float v0, p1

    iput v0, p0, Laeb;->f:F

    .line 177
    int-to-float v0, p2

    iput v0, p0, Laeb;->g:F

    goto :goto_0
.end method

.method public static a(ZLjava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 201
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    .line 202
    if-nez v0, :cond_0

    .line 218
    :goto_0
    return-void

    .line 206
    :cond_0
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sent-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 209
    if-eqz p0, :cond_1

    .line 210
    new-instance v0, Lbds;

    invoke-direct {v0, v2}, Lbds;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 212
    :cond_1
    new-instance v3, Lbcg;

    const v4, 0x7f0c010c

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v4, Lcom/snapchat/android/notification/AndroidNotificationManager;->a:I

    const/4 v5, -0x1

    invoke-direct {v3, v0, v4, v5, v2}, Lbcg;-><init>(Ljava/lang/CharSequence;IILjava/lang/String;)V

    .line 216
    new-instance v0, Lbdy;

    invoke-direct {v0, v2, v3}, Lbdy;-><init>(Ljava/lang/String;Lbcg;)V

    invoke-virtual {v1, v0}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method
