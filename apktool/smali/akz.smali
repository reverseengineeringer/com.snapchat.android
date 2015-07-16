.class public final Lakz;
.super Lala;
.source "SourceFile"


# instance fields
.field private mDateText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/chat/ChatFeedItem;)V
    .locals 2

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lala;-><init>(Ljava/lang/String;Lcom/snapchat/android/model/chat/ChatFeedItem;)V

    .line 22
    if-nez p1, :cond_0

    .line 23
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    const v1, 0x7f0c0081

    invoke-virtual {v0, v1}, Lcom/snapchat/android/SnapchatApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lakz;->mDateText:Ljava/lang/String;

    .line 28
    :goto_0
    return-void

    .line 27
    :cond_0
    invoke-interface {p1}, Lcom/snapchat/android/model/chat/ChatFeedItem;->U()J

    move-result-wide v0

    invoke-static {v0, v1}, Latz;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lakz;->mDateText:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lakz;->mDateText:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lakz;->mDateText:Ljava/lang/String;

    return-object v0
.end method
