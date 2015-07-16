.class public final Loz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lcom/snapchat/android/ui/swipefilters/FilterPageType;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "None"

    iput-object v0, p0, Loz;->a:Ljava/lang/String;

    .line 14
    iput-object v1, p0, Loz;->b:Ljava/lang/String;

    .line 15
    iput-object v1, p0, Loz;->c:Lcom/snapchat/android/ui/swipefilters/FilterPageType;

    .line 18
    return-void
.end method
