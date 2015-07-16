.class public final Laca;
.super Laaw;
.source "SourceFile"


# static fields
.field private static final a:Laca;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Laca;

    invoke-direct {v0}, Laca;-><init>()V

    sput-object v0, Laca;->a:Laca;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 11
    const-string v0, "StorySnapImageFileTable"

    sget-object v1, Laxo;->STORY_RECEIVED_IMAGE_CACHE:Laxn;

    invoke-direct {p0, v0, v1}, Laaw;-><init>(Ljava/lang/String;Laxn;)V

    .line 12
    return-void
.end method

.method public static a()Laca;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Laca;->a:Laca;

    return-object v0
.end method
