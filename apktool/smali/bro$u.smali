.class public final Lbro$u;
.super Ljava/lang/Object;

# interfaces
.implements Lbrn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "u"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    const-string v0, "system"

    return-object v0
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 241
    const-string v0, "android"

    return-object v0
.end method
