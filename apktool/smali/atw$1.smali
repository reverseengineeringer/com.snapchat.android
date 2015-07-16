.class final Latw$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Latw$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Latw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 114
    if-nez p2, :cond_1

    .line 122
    :cond_0
    :goto_0
    return v0

    .line 118
    :cond_1
    add-int/lit8 v1, p2, -0x1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x40

    if-ne v1, v2, :cond_0

    .line 119
    const/4 v0, 0x0

    goto :goto_0
.end method
