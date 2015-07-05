.class public final enum Ljavax/validation/constraints/Pattern$Flag;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/validation/constraints/Pattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Flag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavax/validation/constraints/Pattern$Flag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavax/validation/constraints/Pattern$Flag;

.field public static final enum CANON_EQ:Ljavax/validation/constraints/Pattern$Flag;

.field public static final enum CASE_INSENSITIVE:Ljavax/validation/constraints/Pattern$Flag;

.field public static final enum COMMENTS:Ljavax/validation/constraints/Pattern$Flag;

.field public static final enum DOTALL:Ljavax/validation/constraints/Pattern$Flag;

.field public static final enum MULTILINE:Ljavax/validation/constraints/Pattern$Flag;

.field public static final enum UNICODE_CASE:Ljavax/validation/constraints/Pattern$Flag;

.field public static final enum UNIX_LINES:Ljavax/validation/constraints/Pattern$Flag;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 82
    new-instance v0, Ljavax/validation/constraints/Pattern$Flag;

    const-string v1, "UNIX_LINES"

    invoke-direct {v0, v1, v7, v4}, Ljavax/validation/constraints/Pattern$Flag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljavax/validation/constraints/Pattern$Flag;->UNIX_LINES:Ljavax/validation/constraints/Pattern$Flag;

    .line 89
    new-instance v0, Ljavax/validation/constraints/Pattern$Flag;

    const-string v1, "CASE_INSENSITIVE"

    invoke-direct {v0, v1, v4, v5}, Ljavax/validation/constraints/Pattern$Flag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljavax/validation/constraints/Pattern$Flag;->CASE_INSENSITIVE:Ljavax/validation/constraints/Pattern$Flag;

    .line 96
    new-instance v0, Ljavax/validation/constraints/Pattern$Flag;

    const-string v1, "COMMENTS"

    invoke-direct {v0, v1, v5, v6}, Ljavax/validation/constraints/Pattern$Flag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljavax/validation/constraints/Pattern$Flag;->COMMENTS:Ljavax/validation/constraints/Pattern$Flag;

    .line 103
    new-instance v0, Ljavax/validation/constraints/Pattern$Flag;

    const-string v1, "MULTILINE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v8, v2}, Ljavax/validation/constraints/Pattern$Flag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljavax/validation/constraints/Pattern$Flag;->MULTILINE:Ljavax/validation/constraints/Pattern$Flag;

    .line 110
    new-instance v0, Ljavax/validation/constraints/Pattern$Flag;

    const-string v1, "DOTALL"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v6, v2}, Ljavax/validation/constraints/Pattern$Flag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljavax/validation/constraints/Pattern$Flag;->DOTALL:Ljavax/validation/constraints/Pattern$Flag;

    .line 117
    new-instance v0, Ljavax/validation/constraints/Pattern$Flag;

    const-string v1, "UNICODE_CASE"

    const/4 v2, 0x5

    const/16 v3, 0x40

    invoke-direct {v0, v1, v2, v3}, Ljavax/validation/constraints/Pattern$Flag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljavax/validation/constraints/Pattern$Flag;->UNICODE_CASE:Ljavax/validation/constraints/Pattern$Flag;

    .line 124
    new-instance v0, Ljavax/validation/constraints/Pattern$Flag;

    const-string v1, "CANON_EQ"

    const/4 v2, 0x6

    const/16 v3, 0x80

    invoke-direct {v0, v1, v2, v3}, Ljavax/validation/constraints/Pattern$Flag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ljavax/validation/constraints/Pattern$Flag;->CANON_EQ:Ljavax/validation/constraints/Pattern$Flag;

    .line 75
    const/4 v0, 0x7

    new-array v0, v0, [Ljavax/validation/constraints/Pattern$Flag;

    sget-object v1, Ljavax/validation/constraints/Pattern$Flag;->UNIX_LINES:Ljavax/validation/constraints/Pattern$Flag;

    aput-object v1, v0, v7

    sget-object v1, Ljavax/validation/constraints/Pattern$Flag;->CASE_INSENSITIVE:Ljavax/validation/constraints/Pattern$Flag;

    aput-object v1, v0, v4

    sget-object v1, Ljavax/validation/constraints/Pattern$Flag;->COMMENTS:Ljavax/validation/constraints/Pattern$Flag;

    aput-object v1, v0, v5

    sget-object v1, Ljavax/validation/constraints/Pattern$Flag;->MULTILINE:Ljavax/validation/constraints/Pattern$Flag;

    aput-object v1, v0, v8

    sget-object v1, Ljavax/validation/constraints/Pattern$Flag;->DOTALL:Ljavax/validation/constraints/Pattern$Flag;

    aput-object v1, v0, v6

    const/4 v1, 0x5

    sget-object v2, Ljavax/validation/constraints/Pattern$Flag;->UNICODE_CASE:Ljavax/validation/constraints/Pattern$Flag;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ljavax/validation/constraints/Pattern$Flag;->CANON_EQ:Ljavax/validation/constraints/Pattern$Flag;

    aput-object v2, v0, v1

    sput-object v0, Ljavax/validation/constraints/Pattern$Flag;->$VALUES:[Ljavax/validation/constraints/Pattern$Flag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 130
    iput p3, p0, Ljavax/validation/constraints/Pattern$Flag;->value:I

    .line 131
    return-void
.end method

.method private getValue()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Ljavax/validation/constraints/Pattern$Flag;->value:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax/validation/constraints/Pattern$Flag;
    .locals 1

    .prologue
    .line 75
    const-class v0, Ljavax/validation/constraints/Pattern$Flag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljavax/validation/constraints/Pattern$Flag;

    return-object v0
.end method

.method public static values()[Ljavax/validation/constraints/Pattern$Flag;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Ljavax/validation/constraints/Pattern$Flag;->$VALUES:[Ljavax/validation/constraints/Pattern$Flag;

    invoke-virtual {v0}, [Ljavax/validation/constraints/Pattern$Flag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/validation/constraints/Pattern$Flag;

    return-object v0
.end method
