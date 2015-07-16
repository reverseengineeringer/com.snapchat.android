.class abstract Lch$a;
.super Lch;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 819
    invoke-direct {p0, p1}, Lch;-><init>(Ljava/lang/String;)V

    .line 820
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 813
    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lch;->a(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method
