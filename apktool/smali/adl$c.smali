.class public final Ladl$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ladl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field a:Z

.field b:Z

.field public c:Ljava/lang/String;
    .annotation build Lcgc;
    .end annotation
.end field

.field public d:Lcom/snapchat/android/discover/model/server/DiscoverLinkStatusResult;

.field public e:Ladl$a;

.field final synthetic f:Ladl;


# direct methods
.method public constructor <init>(Ladl;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Ladl$c;->f:Ladl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
