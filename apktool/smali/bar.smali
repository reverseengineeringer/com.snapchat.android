.class public final Lbar;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbar$b;,
        Lbar$a;
    }
.end annotation


# static fields
.field public static final MANIPHEST_TICKET_FILE_PREFIX:Ljava/lang/String; = "snapchat_shake2report_ticket_"

.field private static final TAG:Ljava/lang/String; = "ManiphestAdapter"

.field private static sCurrentlySendingReports:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private MAX_NUMBER_OF_UPLOAD_TRIES:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lbar;->sCurrentlySendingReports:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x4

    iput v0, p0, Lbar;->MAX_NUMBER_OF_UPLOAD_TRIES:I

    .line 271
    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 238
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 239
    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_1

    .line 240
    invoke-static {v0}, Lbar;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 245
    :goto_1
    return v0

    .line 239
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 245
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method static synthetic a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    invoke-static {p0}, Lbar;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lbar;->sCurrentlySendingReports:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private a(Ljava/io/File;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 118
    if-eqz p1, :cond_0

    .line 119
    new-instance v2, Lqf;

    invoke-direct {v2, p3, p1}, Lqf;-><init>(Ljava/lang/String;Ljava/io/File;)V

    move v0, v1

    .line 120
    :goto_0
    iget v3, p0, Lbar;->MAX_NUMBER_OF_UPLOAD_TRIES:I

    if-ge v0, v3, :cond_0

    .line 121
    invoke-virtual {v2}, Lqf;->executeSynchronously()Lus;

    move-result-object v3

    .line 122
    iget v4, v3, Lus;->mResponseCode:I

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_2

    .line 123
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lus;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    .line 127
    :cond_2
    iget v3, p0, Lbar;->MAX_NUMBER_OF_UPLOAD_TRIES:I

    add-int/lit8 v3, v3, -0x1

    if-eq v0, v3, :cond_1

    .line 131
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    int-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Lbhp;->a(J)V

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/StringBuilder;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 166
    new-instance v2, Lbar$a;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lbar$a;-><init>(Ljava/lang/String;)V

    move v0, v1

    .line 167
    :goto_0
    iget v3, p0, Lbar;->MAX_NUMBER_OF_UPLOAD_TRIES:I

    if-ge v0, v3, :cond_0

    .line 168
    invoke-virtual {v2}, Lbar$a;->executeSynchronously()Lus;

    move-result-object v3

    .line 169
    iget v4, v3, Lus;->mResponseCode:I

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_2

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Maniphest Ticket Creation Response: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lus;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    if-eqz p1, :cond_0

    .line 174
    new-instance v0, Lbar$b;

    invoke-virtual {v3}, Lus;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lbar$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lbar$b;->executeSynchronously()Lus;

    .line 188
    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    .line 180
    :cond_2
    iget v3, p0, Lbar;->MAX_NUMBER_OF_UPLOAD_TRIES:I

    add-int/lit8 v3, v3, -0x1

    if-eq v0, v3, :cond_1

    .line 184
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    int-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-long v4, v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Lbhp;->a(J)V

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static b(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "snapchat_shake2report_ticket_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/io/File;Ljava/lang/StringBuilder;[Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 92
    const-string v0, ""

    const-string v1, "Screenshot: "

    invoke-direct {p0, p1, p2, v0, v1}, Lbar;->a(Ljava/io/File;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 93
    const/4 v1, 0x1

    array-length v4, p3

    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v5, p3, v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v7, "snapchat_shake2report_"

    const-string v8, ".txt"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "([a-zA-Z_0-9]+)"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ": "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, ""

    invoke-direct {p0, v5, p2, v6, v0}, Lbar;->a(Ljava/io/File;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 96
    :cond_2
    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    .line 97
    invoke-direct {p0, p4, p2}, Lbar;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)Z

    move-result v0

    .line 98
    if-eqz v0, :cond_3

    .line 99
    const-string v0, "Successfully sent shake2report!"

    .line 101
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    invoke-virtual {v1, p5}, Lcom/snapchat/android/SnapchatApplication;->deleteFile(Ljava/lang/String;)Z

    .line 109
    :goto_3
    new-instance v1, Lbar$2;

    invoke-direct {v1, p0, v0}, Lbar$2;-><init>(Lbar;Ljava/lang/String;)V

    invoke-static {v1}, Lbhp;->a(Ljava/lang/Runnable;)V

    .line 115
    return-void

    .line 103
    :cond_3
    const-string v0, "Failed to create shake2report ticket. Please try again on good network"

    goto :goto_3

    .line 106
    :cond_4
    const-string v0, "one or more files failed to upload to shake2report :( Please try again?"

    goto :goto_3
.end method
