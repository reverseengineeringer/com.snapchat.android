.class final Lats$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field private static final LAZY_INSTANCE:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "\\p{InCombiningDiacriticalMarks}+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lats$a;->LAZY_INSTANCE:Ljava/util/regex/Pattern;

    return-void
.end method

.method static synthetic a()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lats$a;->LAZY_INSTANCE:Ljava/util/regex/Pattern;

    return-object v0
.end method
