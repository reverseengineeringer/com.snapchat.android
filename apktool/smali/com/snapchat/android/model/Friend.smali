.class public Lcom/snapchat/android/model/Friend;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lagk;
.implements Lahb;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/model/Friend$a;,
        Lcom/snapchat/android/model/Friend$Direction;,
        Lcom/snapchat/android/model/Friend$SuggestType;,
        Lcom/snapchat/android/model/Friend$SuggestState;,
        Lcom/snapchat/android/model/Friend$AddSourceType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lagk;",
        "Lahb;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/snapchat/android/model/Friend;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Friend"


# instance fields
.field public mActionState:Lcom/snapchat/android/model/FriendAction;

.field public mAddSource:Ljava/lang/String;

.field public mAddSourceType:Lcom/snapchat/android/model/Friend$AddSourceType;

.field public mBestFriendIndex:I

.field public mCandidateForNeedsLove:Z

.field public mCashEligibility:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

.field public mCustomDescription:Ljava/lang/String;
    .annotation build Lcgc;
    .end annotation
.end field

.field public mCustomTitle:Ljava/lang/String;
    .annotation build Lcgc;
    .end annotation
.end field

.field public mDirection:Lcom/snapchat/android/model/Friend$Direction;

.field public mDisplayName:Ljava/lang/String;

.field public mFriendSection:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

.field public mFriendmojiString:Ljava/lang/String;

.field public mHasBeenAddedAsFriend:Z

.field public mIAddedThemTimestamp:J

.field public mIsBlocked:Z

.field public mIsFollowing:Z

.field public mIsHidden:Z

.field public mIsIgnored:Z

.field public mIsLocalStory:Z

.field public mIsPending:Z

.field public mIsRecent:Z

.field public mIsSharedStory:Z

.field public mJustAdded:Z

.field private mPendingSnapsCount:I

.field public mPhoneNumber:Ljava/lang/String;

.field public mProfileImagesFetched:Z

.field public mSelectedForNeedsLove:Z

.field public mSharedStoryId:Ljava/lang/String;

.field public mShouldFetchCustomDescription:Z

.field public mStubFriend:Z

.field public mSuggestReason:Lbkn$a;

.field public mSuggestType:Lcom/snapchat/android/model/Friend$SuggestType;

.field public mSuggestionState:Lcom/snapchat/android/model/Friend$SuggestState;

.field public mTheyAddedMeTimestamp:J

.field public mUserId:Ljava/lang/String;

.field public mUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lbhu;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 174
    invoke-virtual {p1}, Lbhu;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lbhu;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/snapchat/android/model/Friend;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p1}, Lbhu;->c()Lbhu$a;

    move-result-object v3

    .line 176
    sget-object v0, Lbhu$a;->BLOCKED:Lbhu$a;

    if-ne v3, v0, :cond_0

    .line 177
    iput-boolean v1, p0, Lcom/snapchat/android/model/Friend;->mIsBlocked:Z

    .line 197
    :goto_0
    return-void

    .line 180
    :cond_0
    invoke-virtual {p1}, Lbhu;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/Friend;->mUserId:Ljava/lang/String;

    .line 181
    invoke-virtual {p1}, Lbhu;->e()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Laud;->a(Ljava/lang/Long;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/snapchat/android/model/Friend;->mTheyAddedMeTimestamp:J

    .line 182
    invoke-virtual {p1}, Lbhu;->h()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Laud;->a(Ljava/lang/Integer;)I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/model/Friend;->mPendingSnapsCount:I

    .line 183
    invoke-virtual {p1}, Lbhu;->i()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Laud;->a(Ljava/lang/Boolean;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/model/Friend;->mIsSharedStory:Z

    .line 184
    invoke-virtual {p1}, Lbhu;->j()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Laud;->a(Ljava/lang/Boolean;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/model/Friend;->mShouldFetchCustomDescription:Z

    .line 185
    invoke-virtual {p1}, Lbhu;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/Friend;->mSharedStoryId:Ljava/lang/String;

    .line 186
    invoke-virtual {p1}, Lbhu;->l()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Laud;->a(Ljava/lang/Boolean;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/model/Friend;->mIsLocalStory:Z

    .line 187
    invoke-virtual {p1}, Lbhu;->m()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Laud;->a(Ljava/lang/Boolean;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/model/Friend;->mIsIgnored:Z

    .line 188
    invoke-virtual {p1}, Lbhu;->n()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Laud;->a(Ljava/lang/Boolean;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/model/Friend;->mIsHidden:Z

    .line 189
    invoke-virtual {p1}, Lbhu;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/model/Friend$Direction;->fromValue(Ljava/lang/String;)Lcom/snapchat/android/model/Friend$Direction;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/Friend;->mDirection:Lcom/snapchat/android/model/Friend$Direction;

    .line 190
    invoke-virtual {p1}, Lbhu;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/Friend;->mAddSource:Ljava/lang/String;

    .line 191
    invoke-virtual {p1}, Lbhu;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/model/Friend$AddSourceType;->fromValue(Ljava/lang/String;)Lcom/snapchat/android/model/Friend$AddSourceType;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/Friend;->mAddSourceType:Lcom/snapchat/android/model/Friend$AddSourceType;

    .line 192
    sget-object v0, Lbhu$a;->PENDING:Lbhu$a;

    if-ne v3, v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/snapchat/android/model/Friend;->mIsPending:Z

    .line 193
    sget-object v0, Lbhu$a;->FOLLOWING:Lbhu$a;

    if-ne v3, v0, :cond_3

    :goto_2
    iput-boolean v1, p0, Lcom/snapchat/android/model/Friend;->mIsFollowing:Z

    .line 194
    invoke-virtual {p1}, Lbhu;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/model/Friend$Direction;->fromValue(Ljava/lang/String;)Lcom/snapchat/android/model/Friend$Direction;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/Friend;->mDirection:Lcom/snapchat/android/model/Friend$Direction;

    iget-object v0, p0, Lcom/snapchat/android/model/Friend;->mDirection:Lcom/snapchat/android/model/Friend$Direction;

    sget-object v1, Lcom/snapchat/android/model/Friend$Direction;->OUTGOING:Lcom/snapchat/android/model/Friend$Direction;

    if-ne v0, v1, :cond_1

    sget-object v0, Lbhu$a;->FRIEND:Lbhu$a;

    if-ne v3, v0, :cond_1

    sget-object v0, Lcom/snapchat/android/model/Friend$Direction;->BOTH:Lcom/snapchat/android/model/Friend$Direction;

    iput-object v0, p0, Lcom/snapchat/android/model/Friend;->mDirection:Lcom/snapchat/android/model/Friend$Direction;

    .line 195
    :cond_1
    invoke-virtual {p1}, Lbhu;->q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/Friend;->mFriendmojiString:Ljava/lang/String;

    .line 196
    invoke-virtual {p1}, Lbhu;->r()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Laud;->a(Ljava/lang/Boolean;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/snapchat/android/model/Friend;->mCandidateForNeedsLove:Z

    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 192
    goto :goto_1

    :cond_3
    move v1, v2

    .line 193
    goto :goto_2
.end method

.method public constructor <init>(Lbhu;Lajv;)V
    .locals 1

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lcom/snapchat/android/model/Friend;-><init>(Lbhu;)V

    .line 205
    invoke-virtual {p0}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Latm;->f(Ljava/lang/String;Lajv;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/model/Friend;->mHasBeenAddedAsFriend:Z

    .line 206
    :cond_0
    return-void
.end method

.method public constructor <init>(Lbkn;)V
    .locals 2

    .prologue
    .line 213
    invoke-virtual {p1}, Lbkn;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lbkn;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/model/Friend;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p1}, Lbkn;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/Friend;->mUserId:Ljava/lang/String;

    .line 215
    invoke-virtual {p1}, Lbkn;->c()Lbkn$a;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/model/Friend;->mSuggestReason:Lbkn$a;

    .line 216
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 141
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/snapchat/android/model/Friend;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 145
    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Lcom/snapchat/android/model/Friend;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    sget-object v0, Lcom/snapchat/android/model/Friend$SuggestState;->NOT_SUGGESTION:Lcom/snapchat/android/model/Friend$SuggestState;

    iput-object v0, p0, Lcom/snapchat/android/model/Friend;->mSuggestionState:Lcom/snapchat/android/model/Friend$SuggestState;

    .line 45
    sget-object v0, Lcom/snapchat/android/model/Friend$SuggestType;->NONE:Lcom/snapchat/android/model/Friend$SuggestType;

    iput-object v0, p0, Lcom/snapchat/android/model/Friend;->mSuggestType:Lcom/snapchat/android/model/Friend$SuggestType;

    .line 46
    iput-boolean v2, p0, Lcom/snapchat/android/model/Friend;->mJustAdded:Z

    .line 49
    iput-boolean v2, p0, Lcom/snapchat/android/model/Friend;->mHasBeenAddedAsFriend:Z

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/snapchat/android/model/Friend;->mIAddedThemTimestamp:J

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/snapchat/android/model/Friend;->mBestFriendIndex:I

    .line 63
    sget-object v0, Lcom/snapchat/android/model/FriendAction;->NONE:Lcom/snapchat/android/model/FriendAction;

    iput-object v0, p0, Lcom/snapchat/android/model/Friend;->mActionState:Lcom/snapchat/android/model/FriendAction;

    .line 64
    sget-object v0, Lcom/snapchat/android/model/Friend$Direction;->UNKNOWN:Lcom/snapchat/android/model/Friend$Direction;

    iput-object v0, p0, Lcom/snapchat/android/model/Friend;->mDirection:Lcom/snapchat/android/model/Friend$Direction;

    .line 70
    sget-object v0, Lcom/snapchat/android/model/Friend$AddSourceType;->UNKNOWN:Lcom/snapchat/android/model/Friend$AddSourceType;

    iput-object v0, p0, Lcom/snapchat/android/model/Friend;->mAddSourceType:Lcom/snapchat/android/model/Friend$AddSourceType;

    .line 71
    iput-boolean v2, p0, Lcom/snapchat/android/model/Friend;->mProfileImagesFetched:Z

    .line 72
    sget-object v0, Lbkn$a;->UNKNOWN:Lbkn$a;

    iput-object v0, p0, Lcom/snapchat/android/model/Friend;->mSuggestReason:Lbkn$a;

    .line 104
    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->NONE:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    iput-object v0, p0, Lcom/snapchat/android/model/Friend;->mFriendSection:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    .line 107
    iput-boolean v2, p0, Lcom/snapchat/android/model/Friend;->mStubFriend:Z

    .line 155
    if-nez p1, :cond_0

    const-string p1, ""

    .line 156
    :cond_0
    iput-object p1, p0, Lcom/snapchat/android/model/Friend;->mUsername:Ljava/lang/String;

    .line 157
    if-nez p2, :cond_1

    const-string p2, ""

    .line 159
    :cond_1
    iput-object p2, p0, Lcom/snapchat/android/model/Friend;->mDisplayName:Ljava/lang/String;

    .line 160
    iput-object p3, p0, Lcom/snapchat/android/model/Friend;->mPhoneNumber:Ljava/lang/String;

    .line 161
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 275
    iget-object v0, p0, Lcom/snapchat/android/model/Friend;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 359
    iget-boolean v0, p0, Lcom/snapchat/android/model/Friend;->mHasBeenAddedAsFriend:Z

    return v0
.end method

.method public final c()Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;
    .locals 1

    .prologue
    .line 667
    sget-object v0, Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;->DEFAULT:Lcom/snapchat/android/fragments/stories/StoriesAdapter$StoriesViewType;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 34
    check-cast p1, Lcom/snapchat/android/model/Friend;

    invoke-virtual {p0}, Lcom/snapchat/android/model/Friend;->k()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->k()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Laui;->a(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1}, Laui;->a(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    if-nez v2, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 641
    invoke-virtual {p0}, Lcom/snapchat/android/model/Friend;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/snapchat/android/model/Friend;->mDisplayName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/snapchat/android/model/Friend;->mUsername:Ljava/lang/String;

    .line 318
    :goto_0
    return-object v0

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/model/Friend;->mDisplayName:Ljava/lang/String;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 317
    array-length v1, v0

    if-gtz v1, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/model/Friend;->mUsername:Ljava/lang/String;

    goto :goto_0

    .line 318
    :cond_1
    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 535
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 548
    :goto_0
    return v0

    .line 538
    :cond_0
    instance-of v0, p1, Lcom/snapchat/android/model/Friend;

    if-nez v0, :cond_1

    .line 539
    const/4 v0, 0x0

    goto :goto_0

    .line 543
    :cond_1
    check-cast p1, Lcom/snapchat/android/model/Friend;

    .line 545
    iget-object v0, p0, Lcom/snapchat/android/model/Friend;->mUsername:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 546
    iget-object v0, p0, Lcom/snapchat/android/model/Friend;->mPhoneNumber:Ljava/lang/String;

    iget-object v1, p1, Lcom/snapchat/android/model/Friend;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0

    .line 548
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/model/Friend;->mUsername:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 3

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/snapchat/android/model/Friend;->e()Ljava/lang/String;

    move-result-object v0

    .line 327
    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v1

    .line 328
    if-eqz v1, :cond_0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Lajv;->mDuplicateFirstNames:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 329
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/model/Friend;->k()Ljava/lang/String;

    move-result-object v0

    .line 331
    :cond_1
    return-object v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/snapchat/android/model/Friend;->mUsername:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/snapchat/android/model/Friend;->mUsername:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/model/Friend;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/snapchat/android/model/Friend;->mUsername:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Lcom/snapchat/android/stories/StoriesSection;
    .locals 2

    .prologue
    .line 646
    invoke-virtual {p0}, Lcom/snapchat/android/model/Friend;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    sget-object v0, Lcom/snapchat/android/stories/StoriesSection;->ALPHABETICAL:Lcom/snapchat/android/stories/StoriesSection;

    .line 662
    :goto_0
    return-object v0

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/model/Friend;->mSuggestType:Lcom/snapchat/android/model/Friend$SuggestType;

    sget-object v1, Lcom/snapchat/android/model/Friend$SuggestType;->USERNAME:Lcom/snapchat/android/model/Friend$SuggestType;

    if-ne v0, v1, :cond_1

    .line 651
    sget-object v0, Lcom/snapchat/android/stories/StoriesSection;->USERNAME:Lcom/snapchat/android/stories/StoriesSection;

    goto :goto_0

    .line 654
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/model/Friend;->mSuggestType:Lcom/snapchat/android/model/Friend$SuggestType;

    sget-object v1, Lcom/snapchat/android/model/Friend$SuggestType;->ADDRESS_BOOK:Lcom/snapchat/android/model/Friend$SuggestType;

    if-ne v0, v1, :cond_2

    .line 655
    sget-object v0, Lcom/snapchat/android/stories/StoriesSection;->ADDRESS_BOOK:Lcom/snapchat/android/stories/StoriesSection;

    goto :goto_0

    .line 658
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/model/Friend;->mUsername:Ljava/lang/String;

    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v1

    invoke-static {v0, v1}, Latm;->f(Ljava/lang/String;Lajv;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 659
    sget-object v0, Lcom/snapchat/android/stories/StoriesSection;->FRIENDS:Lcom/snapchat/android/stories/StoriesSection;

    goto :goto_0

    .line 662
    :cond_3
    sget-object v0, Lcom/snapchat/android/stories/StoriesSection;->NONE:Lcom/snapchat/android/stories/StoriesSection;

    goto :goto_0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/snapchat/android/model/Friend;->mDisplayName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Ljava/lang/String;
    .locals 1
    .annotation build Lcgb;
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Lcom/snapchat/android/model/Friend;->mDisplayName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/snapchat/android/model/Friend;->mUsername:Ljava/lang/String;

    .line 286
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/model/Friend;->mDisplayName:Ljava/lang/String;

    goto :goto_0
.end method

.method public final l()Z
    .locals 2

    .prologue
    .line 352
    invoke-static {}, Lajq;->a()Lajq;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/Friend;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lajq;->b(Ljava/lang/String;)Lcom/snapchat/android/model/StoryCollection;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()Lauz;
    .locals 5

    .prologue
    .line 672
    iget-boolean v0, p0, Lcom/snapchat/android/model/Friend;->mIsSharedStory:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/snapchat/android/stories/StoriesThumbnailType;->OLDEST_SNAP_THUMBNAIL_WITHOUT_DECAY:Lcom/snapchat/android/stories/StoriesThumbnailType;

    .line 674
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 675
    invoke-static {}, Lajq;->a()Lajq;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/model/Friend;->mUsername:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lajq;->b(Ljava/lang/String;)Lcom/snapchat/android/model/StoryCollection;

    move-result-object v2

    .line 676
    if-eqz v2, :cond_0

    .line 677
    invoke-virtual {v2}, Lcom/snapchat/android/model/StoryCollection;->f()Ljava/util/List;

    move-result-object v1

    .line 680
    :cond_0
    new-instance v2, Lauz;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/snapchat/android/model/Friend;->mUsername:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&friend"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Lauz;-><init>(Lcom/snapchat/android/stories/StoriesThumbnailType;Ljava/util/List;Ljava/lang/String;)V

    return-object v2

    .line 672
    :cond_1
    sget-object v0, Lcom/snapchat/android/stories/StoriesThumbnailType;->SOME_SNAPS:Lcom/snapchat/android/stories/StoriesThumbnailType;

    goto :goto_0
.end method

.method public final n()Z
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/snapchat/android/model/Friend;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final o()Z
    .locals 1

    .prologue
    .line 422
    iget v0, p0, Lcom/snapchat/android/model/Friend;->mBestFriendIndex:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final p()Z
    .locals 2

    .prologue
    .line 524
    iget-object v0, p0, Lcom/snapchat/android/model/Friend;->mUsername:Ljava/lang/String;

    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public final q()Z
    .locals 2

    .prologue
    .line 579
    iget-object v0, p0, Lcom/snapchat/android/model/Friend;->mSuggestionState:Lcom/snapchat/android/model/Friend$SuggestState;

    sget-object v1, Lcom/snapchat/android/model/Friend$SuggestState;->NOT_SUGGESTION:Lcom/snapchat/android/model/Friend$SuggestState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final r()Z
    .locals 1

    .prologue
    .line 608
    iget-boolean v0, p0, Lcom/snapchat/android/model/Friend;->mIsSharedStory:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/android/model/Friend;->mIsLocalStory:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final s()Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;
    .locals 1
    .annotation build Lcgb;
    .end annotation

    .prologue
    .line 688
    iget-object v0, p0, Lcom/snapchat/android/model/Friend;->mCashEligibility:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    if-nez v0, :cond_0

    .line 689
    sget-object v0, Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;->SERVICE_NOT_AVAILABLE_TO_RECIPIENT:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    iput-object v0, p0, Lcom/snapchat/android/model/Friend;->mCashEligibility:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    .line 691
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/model/Friend;->mCashEligibility:Lcom/snapchat/android/api2/cash/ScCashResponsePayload$Status;

    return-object v0
.end method

.method public final t()V
    .locals 2

    .prologue
    .line 700
    iget-boolean v0, p0, Lcom/snapchat/android/model/Friend;->mIsSharedStory:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/snapchat/android/model/Friend;->mIsLocalStory:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/snapchat/android/model/Friend;->mShouldFetchCustomDescription:Z

    if-eqz v0, :cond_1

    .line 701
    new-instance v0, Loo;

    iget-object v1, p0, Lcom/snapchat/android/model/Friend;->mSharedStoryId:Ljava/lang/String;

    invoke-direct {v0, v1}, Loo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Loo;->f()V

    .line 703
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Friend [mDisplayName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/snapchat/android/model/Friend;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUsername="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/Friend;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Lcom/snapchat/android/model/Friend;->mFriendmojiString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lbaj;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 765
    invoke-static {}, Lbaj;->a()Ljava/lang/String;

    move-result-object v0

    .line 768
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/model/Friend;->mFriendmojiString:Ljava/lang/String;

    goto :goto_0
.end method
