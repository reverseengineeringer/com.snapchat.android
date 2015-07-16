.class public final Lael$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lael;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field a:Z

.field b:Z

.field public c:Ljava/lang/String;
    .annotation build Lchd;
    .end annotation
.end field

.field public d:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;

.field public e:Lael$a;

.field final synthetic f:Lael;


# direct methods
.method public constructor <init>(Lael;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lael$c;->f:Lael;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
