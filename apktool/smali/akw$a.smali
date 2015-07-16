.class public Lakw$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lakw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field id:Ljava/lang/String;

.field recipient:Ljava/lang/String;

.field sender:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 459
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lakw$a;->id:Ljava/lang/String;

    .line 460
    iput-object p1, p0, Lakw$a;->sender:Ljava/lang/String;

    .line 461
    iput-object p2, p0, Lakw$a;->recipient:Ljava/lang/String;

    .line 462
    return-void
.end method
