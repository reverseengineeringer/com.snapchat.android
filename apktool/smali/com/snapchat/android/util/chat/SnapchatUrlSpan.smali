.class public Lcom/snapchat/android/util/chat/SnapchatUrlSpan;
.super Landroid/text/style/URLSpan;
.source "SourceFile"


# instance fields
.field public mMessage:Lalj;

.field public mType:Lcom/snapchat/android/util/chat/UrlType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lalj;Lcom/snapchat/android/util/chat/UrlType;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 16
    iput-object p2, p0, Lcom/snapchat/android/util/chat/SnapchatUrlSpan;->mMessage:Lalj;

    .line 17
    iput-object p3, p0, Lcom/snapchat/android/util/chat/SnapchatUrlSpan;->mType:Lcom/snapchat/android/util/chat/UrlType;

    .line 18
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 22
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lbby;

    invoke-direct {v1, p0}, Lbby;-><init>(Lcom/snapchat/android/util/chat/SnapchatUrlSpan;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 23
    return-void
.end method
